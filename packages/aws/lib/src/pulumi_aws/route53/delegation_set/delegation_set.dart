import 'package:pulumi/pulumi.dart';
import 'delegation_set_args.dart';

/// Provides a [Route53 Delegation Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API-actions-by-function.html#actions-by-function-reusable-delegation-sets) resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Delegation Sets using the delegation set `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/delegationSet:DelegationSet set1 N1PA6795SAMPLE
/// ```
class DelegationSet extends CustomResource {
  /// The Amazon Resource Name (ARN) of the Delegation Set.
  late final Output<String> arn;

  /// A list of authoritative name servers for the hosted zone
  /// (effectively a list of NS records).
  late final Output<List<String>> nameServers;

  /// This is a reference name used in Caller Reference
  /// (helpful for identifying single delegation set amongst others)
  late final Output<String?> referenceName;

  DelegationSet(
    String name, {
    DelegationSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/delegationSet:DelegationSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.nameServers = registerOutput<List<String>>('nameServers');
    this.referenceName = registerOutput<String?>('referenceName');
  }
}
