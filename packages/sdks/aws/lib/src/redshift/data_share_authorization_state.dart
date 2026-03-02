// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataShareAuthorization resources.
class DataShareAuthorizationState {
  /// Whether to allow write operations for a datashare.
  final pulumi.Input<bool>? allowWrites;
  /// Identifier of the data consumer that is authorized to access the datashare. This identifier is an AWS account ID or a keyword, such as `ADX`.
  final pulumi.Input<String>? consumerIdentifier;
  /// Amazon Resource Name (ARN) of the datashare that producers are to authorize sharing for.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? dataShareArn;
  /// Identifier of a datashare to show its managing entity.
  final pulumi.Input<String>? managedBy;
  /// Amazon Resource Name (ARN) of the producer.
  final pulumi.Input<String>? producerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DataShareAuthorizationState].
  /// [allowWrites] Whether to allow write operations for a datashare.
  /// [consumerIdentifier] Identifier of the data consumer that is authorized to access the datashare. This identifier is an AWS account ID or a keyword, such as `ADX`.
  /// [dataShareArn] Amazon Resource Name (ARN) of the datashare that producers are to authorize sharing for.
  /// [managedBy] Identifier of a datashare to show its managing entity.
  /// [producerArn] Amazon Resource Name (ARN) of the producer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DataShareAuthorizationState({
    this.allowWrites,
    this.consumerIdentifier,
    this.dataShareArn,
    this.managedBy,
    this.producerArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowWrites': ?allowWrites,
      'consumerIdentifier': ?consumerIdentifier,
      'dataShareArn': ?dataShareArn,
      'managedBy': ?managedBy,
      'producerArn': ?producerArn,
      'region': ?region,
    };
  }

  factory DataShareAuthorizationState.fromMap(Map<String, dynamic> map) {
    return DataShareAuthorizationState(
      allowWrites: map['allowWrites'] == null ? null : (map['allowWrites'] as bool).input(),
      consumerIdentifier: map['consumerIdentifier'] == null ? null : (map['consumerIdentifier'] as String).input(),
      dataShareArn: map['dataShareArn'] == null ? null : (map['dataShareArn'] as String).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy'] as String).input(),
      producerArn: map['producerArn'] == null ? null : (map['producerArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

