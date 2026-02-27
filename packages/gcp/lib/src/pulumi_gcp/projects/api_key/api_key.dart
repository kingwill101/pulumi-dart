import 'package:pulumi/pulumi.dart';
import '../api_key_restrictions/api_key_restrictions.dart';
import 'api_key_args.dart';

/// The Apikeys Key resource
///
/// ## Example Usage
///
/// ### Android_key
/// A basic example of a android api keys key
///
/// ### Basic_key
/// A basic example of a api keys key
///
/// ### Ios_key
/// A basic example of a ios api keys key
///
/// ### Minimal_key
/// A minimal example of a api keys key
///
/// ### Server_key
/// A basic example of a server api keys key
///
/// ### Service_account_key
///
///
/// ## Import
///
/// Key can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/keys/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Key can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/apiKey:ApiKey default projects/{{project}}/locations/global/keys/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/apiKey:ApiKey default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/apiKey:ApiKey default {{name}}
/// ```
class ApiKey extends CustomResource {
  /// Human-readable display name of this API key. Modifiable by user.
  late final Output<String?> displayName;

  /// Output only. An encrypted and signed value held by this key. This field can be accessed only through the `GetKeyString` method.
  late final Output<String> keyString;

  /// The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `a-z?`.
  ///
  ///
  ///
  /// - - -
  late final Output<String> name;

  /// The project for the resource
  late final Output<String> project;

  /// Key restrictions.
  late final Output<ApiKeyRestrictions?> restrictions;

  /// The email of the service account the key is bound to. If this field is specified, the key is a service account bound key and auth enabled. See [Documentation](https://cloud.devsite.corp.google.com/docs/authentication/api-keys?#api-keys-bound-sa) for more details.
  late final Output<String?> serviceAccountEmail;

  /// Output only. Unique id in UUID4 format.
  late final Output<String> uid;

  ApiKey(
    String name, {
    ApiKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:projects/apiKey:ApiKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String?>('displayName');
    this.keyString = registerOutput<String>('keyString');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.restrictions = registerOutput<ApiKeyRestrictions?>('restrictions');
    this.serviceAccountEmail = registerOutput<String?>('serviceAccountEmail');
    this.uid = registerOutput<String>('uid');
  }
}
