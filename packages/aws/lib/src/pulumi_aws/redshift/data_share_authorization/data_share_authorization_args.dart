// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DataShareAuthorization.
class DataShareAuthorizationArgs {
  /// Whether to allow write operations for a datashare.
  final pulumi.Input<bool>? allowWrites;

  /// Identifier of the data consumer that is authorized to access the datashare. This identifier is an AWS account ID or a keyword, such as `ADX`.
  final pulumi.Input<String> consumerIdentifier;

  /// Amazon Resource Name (ARN) of the datashare that producers are to authorize sharing for.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> dataShareArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DataShareAuthorizationArgs({
    this.allowWrites,
    required this.consumerIdentifier,
    required this.dataShareArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowWritesValue = allowWrites;
    if (allowWritesValue != null) {
      map['allowWrites'] = allowWritesValue;
    }
    map['consumerIdentifier'] = consumerIdentifier;
    map['dataShareArn'] = dataShareArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DataShareAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return DataShareAuthorizationArgs(
      allowWrites: pulumi.Input.asOptionalInput<bool>(map['allowWrites']),
      consumerIdentifier:
          pulumi.Input.asInput<String>(map['consumerIdentifier']),
      dataShareArn: pulumi.Input.asInput<String>(map['dataShareArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
