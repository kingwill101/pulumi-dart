// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_network_service_associations_item.dart';

/// Result data returned by getServiceNetworkServiceAssociations.
class GetServiceNetworkServiceAssociationsResult {
  /// List of objects containing Service Network Service Associations. Each object has the following attributes:
  final List<GetServiceNetworkServiceAssociationsItem>? items;
  final String? region;
  final String? serviceIdentifier;
  final String? serviceNetworkIdentifier;

  /// Creates a new [GetServiceNetworkServiceAssociationsResult].
  /// [items] List of objects containing Service Network Service Associations. Each object has the following attributes:
  /// [region] Optional.
  /// [serviceIdentifier] Optional.
  /// [serviceNetworkIdentifier] Optional.
  const GetServiceNetworkServiceAssociationsResult({
    this.items,
    this.region,
    this.serviceIdentifier,
    this.serviceNetworkIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?(() { final guardedValue = items; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceNetworkServiceAssociationsItem, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'serviceIdentifier': ?serviceIdentifier,
      'serviceNetworkIdentifier': ?serviceNetworkIdentifier,
    };
  }

  factory GetServiceNetworkServiceAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkServiceAssociationsResult(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceNetworkServiceAssociationsItem>(guardedValue, (value) => GetServiceNetworkServiceAssociationsItem.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceIdentifier: (() { final guardedValue = map['serviceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceNetworkIdentifier: (() { final guardedValue = map['serviceNetworkIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
