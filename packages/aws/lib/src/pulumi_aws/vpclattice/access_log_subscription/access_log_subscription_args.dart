// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccessLogSubscription.
class AccessLogSubscriptionArgs {
  /// Amazon Resource Name (ARN) of the log destination.
  final pulumi.Input<String> destinationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceIdentifier;

  /// Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  final pulumi.Input<String>? serviceNetworkLogType;
  final pulumi.Input<Map<String, String>>? tags;

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
      destinationArn: pulumi.Input.asInput<String>(map['destinationArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceIdentifier:
          pulumi.Input.asInput<String>(map['resourceIdentifier']),
      serviceNetworkLogType:
          pulumi.Input.asOptionalInput<String>(map['serviceNetworkLogType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
