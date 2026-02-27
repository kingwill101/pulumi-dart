import 'package:pulumi/pulumi.dart';
import 'authorizer_args3.dart';

/// Creates and manages an AWS IoT Authorizer.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IOT Authorizers using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/authorizer:Authorizer example example
/// ```
class Authorizer3 extends CustomResource {
  /// The ARN of the authorizer.
  late final Output<String> arn;

  /// The ARN of the authorizer's Lambda function.
  late final Output<String> authorizerFunctionArn;

  /// Specifies whether the HTTP caching is enabled or not. Default: `false`.
  late final Output<bool?> enableCachingForHttp;

  /// The name of the authorizer.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies whether AWS IoT validates the token signature in an authorization request. Default: `false`.
  late final Output<bool?> signingDisabled;

  /// The status of Authorizer request at creation. Valid values: `ACTIVE`, `INACTIVE`. Default: `ACTIVE`.
  late final Output<String?> status;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The name of the token key used to extract the token from the HTTP headers. This value is required if signing is enabled in your authorizer.
  late final Output<String?> tokenKeyName;

  /// The public keys used to verify the digital signature returned by your custom authentication service. This value is required if signing is enabled in your authorizer.
  late final Output<Map<String, String>?> tokenSigningPublicKeys;

  Authorizer3(
    String name, {
    AuthorizerArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/authorizer:Authorizer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authorizerFunctionArn =
        registerOutput<String>('authorizerFunctionArn');
    this.enableCachingForHttp = registerOutput<bool?>('enableCachingForHttp');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.signingDisabled = registerOutput<bool?>('signingDisabled');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tokenKeyName = registerOutput<String?>('tokenKeyName');
    this.tokenSigningPublicKeys =
        registerOutput<Map<String, String>?>('tokenSigningPublicKeys');
  }
}
