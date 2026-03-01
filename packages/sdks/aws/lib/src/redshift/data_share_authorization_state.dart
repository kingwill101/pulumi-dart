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
    pulumi.Output<bool>? allowWrites,
    pulumi.Output<String>? consumerIdentifier,
    pulumi.Output<String>? dataShareArn,
    pulumi.Output<String>? managedBy,
    pulumi.Output<String>? producerArn,
    pulumi.Output<String>? region,
  }) :
      allowWrites = pulumi.Input.asOptionalInput<bool>(allowWrites),
      consumerIdentifier = pulumi.Input.asOptionalInput<String>(consumerIdentifier),
      dataShareArn = pulumi.Input.asOptionalInput<String>(dataShareArn),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      producerArn = pulumi.Input.asOptionalInput<String>(producerArn),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      allowWrites: map['allowWrites'] == null ? null : pulumi.Output.create<bool>(map['allowWrites'] as bool),
      consumerIdentifier: map['consumerIdentifier'] == null ? null : pulumi.Output.create<String>(map['consumerIdentifier'] as String),
      dataShareArn: map['dataShareArn'] == null ? null : pulumi.Output.create<String>(map['dataShareArn'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      producerArn: map['producerArn'] == null ? null : pulumi.Output.create<String>(map['producerArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

