import 'package:pulumi/pulumi.dart';
import '../configuration_profile_validator/configuration_profile_validator.dart';
import 'configuration_profile_args.dart';

/// Provides an AppConfig Configuration Profile resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Configuration Profiles using the configuration profile ID and application ID separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/configurationProfile:ConfigurationProfile example 71abcde:11xxxxx
/// ```
class ConfigurationProfile extends CustomResource {
  /// Application ID. Must be between 4 and 7 characters in length.
  late final Output<String> applicationId;

  /// ARN of the AppConfig Configuration Profile.
  late final Output<String> arn;

  /// The configuration profile ID.
  late final Output<String> configurationProfileId;

  /// Description of the configuration profile. Can be at most 1024 characters.
  late final Output<String?> description;

  /// The identifier for an Key Management Service key to encrypt new configuration data versions in the AppConfig hosted configuration store. This attribute is only used for hosted configuration types. The identifier can be an KMS key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias.
  late final Output<String?> kmsKeyIdentifier;

  /// URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the hosted configuration store, specify `hosted`. For an SSM document, specify either the document name in the format `ssm-document://<Document_name>` or the ARN. For a parameter, specify either the parameter name in the format `ssm-parameter://<Parameter_name>` or the ARN. For an Amazon S3 object, specify the URI in the following format: `s3://<bucket>/<objectKey>`.
  late final Output<String> locationUri;

  /// Name for the configuration profile. Must be between 1 and 128 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of an IAM role with permission to access the configuration at the specified `location_uri`. A retrieval role ARN is not required for configurations stored in the AWS AppConfig `hosted` configuration store. It is required for all other sources that store your configuration.
  late final Output<String?> retrievalRoleArn;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of configurations contained in the profile. Valid values: `AWS.AppConfig.FeatureFlags` and `AWS.Freeform`.  Default: `AWS.Freeform`.
  late final Output<String?> type;

  /// Set of methods for validating the configuration. Maximum of 2. See Validator below for more details.
  late final Output<List<ConfigurationProfileValidator>?> validators;

  ConfigurationProfile(
    String name, {
    ConfigurationProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/configurationProfile:ConfigurationProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.arn = registerOutput<String>('arn');
    this.configurationProfileId =
        registerOutput<String>('configurationProfileId');
    this.description = registerOutput<String?>('description');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.retrievalRoleArn = registerOutput<String?>('retrievalRoleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.validators =
        registerOutput<List<ConfigurationProfileValidator>?>('validators');
  }
}
