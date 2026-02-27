import 'package:pulumi/pulumi.dart';
import '../sdkvoice_sip_media_application_endpoints/sdkvoice_sip_media_application_endpoints.dart';
import 'sdkvoice_sip_media_application_args.dart';

/// A ChimeSDKVoice SIP Media Application is a managed object that passes values from a SIP rule to a target AWS Lambda function.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a ChimeSDKVoice SIP Media Application using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/sdkvoiceSipMediaApplication:SdkvoiceSipMediaApplication example abcdef123456
/// ```
class SdkvoiceSipMediaApplication extends CustomResource {
  /// ARN (Amazon Resource Name) of the AWS Chime SDK Voice Sip Media Application
  late final Output<String> arn;

  /// The AWS Region in which the AWS Chime SDK Voice Sip Media Application is created.
  late final Output<String> awsRegion;

  /// List of endpoints (Lambda Amazon Resource Names) specified for the SIP media application. Currently, only one endpoint is supported. See `endpoints`.
  late final Output<SdkvoiceSipMediaApplicationEndpoints> endpoints;

  /// The name of the AWS Chime SDK Voice Sip Media Application.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  SdkvoiceSipMediaApplication(
    String name, {
    SdkvoiceSipMediaApplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceSipMediaApplication:SdkvoiceSipMediaApplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsRegion = registerOutput<String>('awsRegion');
    this.endpoints =
        registerOutput<SdkvoiceSipMediaApplicationEndpoints>('endpoints');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
