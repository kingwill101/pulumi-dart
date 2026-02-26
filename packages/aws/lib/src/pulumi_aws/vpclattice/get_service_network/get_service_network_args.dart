// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceNetwork.
class GetServiceNetworkArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the service network.
  final Input<String> serviceNetworkIdentifier;
  final Input<Map<String, String>>? tags;

  GetServiceNetworkArgs({
    this.region,
    required this.serviceNetworkIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceNetworkIdentifier'] = serviceNetworkIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetServiceNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkArgs(
      region: Input.asOptionalInput<String>(map['region']),
      serviceNetworkIdentifier:
          Input.asInput<String>(map['serviceNetworkIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
