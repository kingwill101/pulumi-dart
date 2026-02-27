import 'package:pulumi/pulumi.dart';
import 'api_key_args2.dart';

/// Provides an AppSync API Key.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.ApiKey` using the AppSync API ID and key separated by `:`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/apiKey:ApiKey example xxxxx:yyyyy
/// ```
class ApiKey2 extends CustomResource {
  /// ID of the associated AppSync API
  late final Output<String> apiId;
  late final Output<String> apiKeyId;

  /// API key description. Defaults to "Managed by Pulumi".
  late final Output<String> description;

  /// RFC3339 string representation of the expiry date. Rounded down to nearest hour. By default, it is 7 days from the date of creation.
  late final Output<String?> expires;

  /// API key
  late final Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ApiKey2(
    String name, {
    ApiKeyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/apiKey:ApiKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.apiKeyId = registerOutput<String>('apiKeyId');
    this.description = registerOutput<String>('description');
    this.expires = registerOutput<String?>('expires');
    this.key = registerOutput<String>('key');
    this.region = registerOutput<String>('region');
  }
}
