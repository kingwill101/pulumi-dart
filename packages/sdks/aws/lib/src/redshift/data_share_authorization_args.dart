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
    this.allowWrites,
    required this.consumerIdentifier,
    required this.dataShareArn,
    this.region,
  });

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
      allowWrites: map['allowWrites'] == null ? null : ((map['allowWrites'] as bool).input()).input(),
      consumerIdentifier: (map['consumerIdentifier'] as String).input(),
      dataShareArn: (map['dataShareArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

