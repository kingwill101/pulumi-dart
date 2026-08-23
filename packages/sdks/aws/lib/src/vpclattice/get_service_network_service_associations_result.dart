// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_network_service_associations_item.dart';

/// Result data returned by getServiceNetworkServiceAssociations.
class GetServiceNetworkServiceAssociationsResult {
  /// List of objects containing Service Network Service Associations. Each object has the following attributes:
  final List<GetServiceNetworkServiceAssociationsItem> items;
  final String region;
  final String? serviceIdentifier;
  final String? serviceNetworkIdentifier;

  /// Creates a new [GetServiceNetworkServiceAssociationsResult].
  /// [items] List of objects containing Service Network Service Associations. Each object has the following attributes:
  /// [region] Required.
  /// [serviceIdentifier] Optional.
  /// [serviceNetworkIdentifier] Optional.
  const GetServiceNetworkServiceAssociationsResult({
    required this.items,
    required this.region,
    this.serviceIdentifier,
    this.serviceNetworkIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.encodeList<GetServiceNetworkServiceAssociationsItem, Map<String, dynamic>>(items, (value) => value.toMap()),
      'region': region,
      'serviceIdentifier': ?serviceIdentifier,
      'serviceNetworkIdentifier': ?serviceNetworkIdentifier,
    };
  }

  factory GetServiceNetworkServiceAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkServiceAssociationsResult(
      items: pulumi.Input.decodeList<GetServiceNetworkServiceAssociationsItem>(map['items']!, (value) => GetServiceNetworkServiceAssociationsItem.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      serviceIdentifier: (() { final guardedValue = map['serviceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceNetworkIdentifier: (() { final guardedValue = map['serviceNetworkIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
