import 'package:pulumi/pulumi.dart';
import '../sdkvoice_voice_profile_domain_server_side_encryption_configuration/sdkvoice_voice_profile_domain_server_side_encryption_configuration.dart';
import 'sdkvoice_voice_profile_domain_args.dart';

/// Resource for managing an AWS Chime SDK Voice Profile Domain.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Chime SDK Voice Profile Domain using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/sdkvoiceVoiceProfileDomain:SdkvoiceVoiceProfileDomain example abcdef123456
/// ```
class SdkvoiceVoiceProfileDomain extends CustomResource {
  /// ARN of the Voice Profile Domain.
  late final Output<String> arn;

  /// Description of Voice Profile Domain.
  late final Output<String?> description;

  /// Name of Voice Profile Domain.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration for server side encryption.
  late final Output<SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>
      serverSideEncryptionConfiguration;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  SdkvoiceVoiceProfileDomain(
    String name, {
    SdkvoiceVoiceProfileDomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceVoiceProfileDomain:SdkvoiceVoiceProfileDomain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serverSideEncryptionConfiguration = registerOutput<
            SdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration>(
        'serverSideEncryptionConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
