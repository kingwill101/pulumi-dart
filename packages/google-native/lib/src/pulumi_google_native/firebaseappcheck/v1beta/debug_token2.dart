import 'package:pulumi/pulumi.dart';
import 'debug_token_args2.dart';

/// Creates a new DebugToken for the specified app. For security reasons, after the creation operation completes, the `token` field cannot be updated or retrieved, but you can revoke the debug token using DeleteDebugToken. Each app can have a maximum of 20 debug tokens.
class DebugToken2 extends CustomResource {
  late final Output<String> appId;

  /// A human readable display name used to identify this debug token.
  late final Output<String> displayName;

  /// The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  late final Output<String> name;
  late final Output<String> project;

  /// Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.
  late final Output<String> token;

  DebugToken2(
    String name, {
    DebugTokenArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firebaseappcheck/v1beta:DebugToken',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.token = Output.createUnknown<String>();
  }
}
