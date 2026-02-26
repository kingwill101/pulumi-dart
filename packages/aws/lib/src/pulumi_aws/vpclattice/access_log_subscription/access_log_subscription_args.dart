// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AccessLogSubscription.
class AccessLogSubscriptionArgs {
  /// Amazon Resource Name (ARN) of the log destination.
  final Input<String> destinationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  ///
  /// The following arguments are optional:
  final Input<String> resourceIdentifier;

  /// Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  final Input<String>? serviceNetworkLogType;
  final Input<Map<String, String>>? tags;

  AccessLogSubscriptionArgs({
    required this.destinationArn,
    this.region,
    required this.resourceIdentifier,
    this.serviceNetworkLogType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationArn'] = destinationArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceIdentifier'] = resourceIdentifier;
    final serviceNetworkLogTypeValue = serviceNetworkLogType;
    if (serviceNetworkLogTypeValue != null) {
      map['serviceNetworkLogType'] = serviceNetworkLogTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AccessLogSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AccessLogSubscriptionArgs(
      destinationArn: Input.asInput<String>(map['destinationArn']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceIdentifier: Input.asInput<String>(map['resourceIdentifier']),
      serviceNetworkLogType:
          Input.asOptionalInput<String>(map['serviceNetworkLogType']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
