import 'package:pulumi/pulumi.dart';
import 'instance_metadata_defaults_args.dart';

/// Manages regional EC2 instance metadata default settings.
/// More information can be found in the [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html) user guide.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// You cannot import this resource.
class InstanceMetadataDefaults extends CustomResource {
  /// Whether the metadata service is available. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  late final Output<String> httpEndpoint;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from `1` to `64`, or `-1` to indicate no preference. Default: `-1`.
  late final Output<int> httpPutResponseHopLimit;

  /// Whether the metadata service requires session tokens, also referred to as _Instance Metadata Service Version 2 (IMDSv2)_. Can be `"optional"`, `"required"`, or `"no-preference"`. Default: `"no-preference"`.
  late final Output<String> httpTokens;

  /// Enables or disables access to instance tags from the instance metadata service. Can be `"enabled"`, `"disabled"`, or `"no-preference"`. Default: `"no-preference"`.
  late final Output<String> instanceMetadataTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  InstanceMetadataDefaults(
    String name, {
    InstanceMetadataDefaultsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/instanceMetadataDefaults:InstanceMetadataDefaults',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.httpEndpoint = registerOutput<String>('httpEndpoint');
    this.httpPutResponseHopLimit =
        registerOutput<int>('httpPutResponseHopLimit');
    this.httpTokens = registerOutput<String>('httpTokens');
    this.instanceMetadataTags = registerOutput<String>('instanceMetadataTags');
    this.region = registerOutput<String>('region');
  }
}
