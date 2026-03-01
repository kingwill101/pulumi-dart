import 'package:pulumi/pulumi.dart' as pulumi;
import 'debug_token_args.dart';

/// Creates a new DebugToken for the specified app. For security reasons, after the creation operation completes, the `token` field cannot be updated or retrieved, but you can revoke the debug token using DeleteDebugToken. Each app can have a maximum of 20 debug tokens.
class DebugToken extends pulumi.CustomResource {
  late final pulumi.Output<String> appId;

  /// A human readable display name used to identify this debug token.
  late final pulumi.Output<String> displayName;

  /// The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.
  late final pulumi.Output<String> token;

  /// Creates a new [DebugToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DebugToken]. {@macro pulumi_firebaseappcheck_v1_debug_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DebugToken(
    String name, {
    DebugTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:firebaseappcheck/v1:DebugToken',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.appId = registerOutput<String>('appId');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.token = registerOutput<String>('token');
  }
}
