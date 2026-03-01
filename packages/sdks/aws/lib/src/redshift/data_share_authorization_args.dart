// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_data_share_authorization_data_share_authorization_args_doc}
/// The set of arguments for DataShareAuthorization.
/// {@endtemplate}
/// {@macro pulumi_redshift_data_share_authorization_data_share_authorization_args_doc}
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

  /// Creates a new [DataShareAuthorizationArgs].
  /// [allowWrites] Whether to allow write operations for a datashare.
  /// [consumerIdentifier] Identifier of the data consumer that is authorized to access the datashare. This identifier is an AWS account ID or a keyword, such as `ADX`.
  /// [dataShareArn] Amazon Resource Name (ARN) of the datashare that producers are to authorize sharing for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DataShareAuthorizationArgs({
    pulumi.Output<bool>? allowWrites,
    required pulumi.Output<String> consumerIdentifier,
    required pulumi.Output<String> dataShareArn,
    pulumi.Output<String>? region,
  }) :
      allowWrites = pulumi.Input.asOptionalInput<bool>(allowWrites),
      consumerIdentifier = pulumi.Input.asInput<String>(consumerIdentifier),
      dataShareArn = pulumi.Input.asInput<String>(dataShareArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowWrites': ?allowWrites,
      'consumerIdentifier': consumerIdentifier,
      'dataShareArn': dataShareArn,
      'region': ?region,
    };
  }

  factory DataShareAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return DataShareAuthorizationArgs(
      allowWrites: map['allowWrites'] == null ? null : pulumi.Output.create<bool>(map['allowWrites'] as bool),
      consumerIdentifier: pulumi.Output.create<String>(map['consumerIdentifier'] as String),
      dataShareArn: pulumi.Output.create<String>(map['dataShareArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

