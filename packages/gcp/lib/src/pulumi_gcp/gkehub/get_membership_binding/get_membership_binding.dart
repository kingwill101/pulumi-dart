import 'package:pulumi/pulumi.dart';
import 'get_membership_binding_args.dart';
import 'get_membership_binding_result.dart';

/// Retrieves the details of a specific GKE Hub Membership Binding. Use this data source to retrieve the membership binding's configuration and state.
///
/// A membership binding associates a GKE Hub membership with a scope, enabling the membership to participate in fleet-wide configurations and policies defined by the scope.
Future<GetMembershipBindingResult> getMembershipBinding(
  GetMembershipBindingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getMembershipBinding:getMembershipBinding',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMembershipBindingResult.fromMap(result);
}
