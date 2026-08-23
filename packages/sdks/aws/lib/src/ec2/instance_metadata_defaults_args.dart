// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_instance_metadata_defaults_instance_metadata_defaults_args_doc}
/// The set of arguments for InstanceMetadataDefaults.
/// {@endtemplate}
/// {@macro pulumi_ec2_instance_metadata_defaults_instance_metadata_defaults_args_doc}
class InstanceMetadataDefaultsArgs {
  /// Whether the metadata service is available. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  final pulumi.Input<String>? httpEndpoint;
  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from `1` to `64`, or `-1` to indicate no preference. Default: `-1`.
  final pulumi.Input<int>? httpPutResponseHopLimit;
  /// Whether the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Can be `"optional"`, `"required"`, or `"no-preference"`. Default: `"no-preference"`.
  final pulumi.Input<String>? httpTokens;
  /// Enables or disables access to instance tags from the instance metadata service. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  final pulumi.Input<String>? instanceMetadataTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InstanceMetadataDefaultsArgs].
  /// [httpEndpoint] Whether the metadata service is available. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  /// [httpPutResponseHopLimit] The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from `1` to `64`, or `-1` to indicate no preference. Default: `-1`.
  /// [httpTokens] Whether the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Can be `"optional"`, `"required"`, or `"no-preference"`. Default: `"no-preference"`.
  /// [instanceMetadataTags] Enables or disables access to instance tags from the instance metadata service. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const InstanceMetadataDefaultsArgs({
    this.httpEndpoint,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.instanceMetadataTags,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpEndpoint': ?httpEndpoint,
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens': ?httpTokens,
      'instanceMetadataTags': ?instanceMetadataTags,
      'region': ?region,
    };
  }

  factory InstanceMetadataDefaultsArgs.fromMap(Map<String, dynamic> map) {
    return InstanceMetadataDefaultsArgs(
      httpEndpoint: (() { final guardedValue = map['httpEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpPutResponseHopLimit: (() { final guardedValue = map['httpPutResponseHopLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpTokens: (() { final guardedValue = map['httpTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceMetadataTags: (() { final guardedValue = map['instanceMetadataTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
