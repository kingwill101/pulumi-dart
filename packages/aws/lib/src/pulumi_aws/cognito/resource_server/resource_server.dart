import 'package:pulumi/pulumi.dart';
import '../resource_server_scope/resource_server_scope.dart';
import 'resource_server_args.dart';

/// Provides a Cognito Resource Server.
///
/// ## Example Usage
///
/// ### Create a basic resource server
///
///
///
/// ### Create a resource server with sample-scope
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.cognito.ResourceServer` using their User Pool ID and Identifier. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/resourceServer:ResourceServer example "us-west-2_abc123|https://example.com"
/// ```
class ResourceServer extends CustomResource {
  /// An identifier for the resource server.
  late final Output<String> identifier;

  /// A name for the resource server.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of all scopes configured for this resource server in the format identifier/scope_name.
  late final Output<List<String>> scopeIdentifiers;

  /// A list of Authorization Scope.
  late final Output<List<ResourceServerScope>?> scopes;

  /// User pool the client belongs to.
  late final Output<String> userPoolId;

  ResourceServer(
    String name, {
    ResourceServerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/resourceServer:ResourceServer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.identifier = registerOutput<String>('identifier');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.scopeIdentifiers = registerOutput<List<String>>('scopeIdentifiers');
    this.scopes = registerOutput<List<ResourceServerScope>?>('scopes');
    this.userPoolId = registerOutput<String>('userPoolId');
  }
}
