import 'package:pulumi/pulumi.dart';
import 'public_dns_namespace_args.dart';

/// Provides a Service Discovery Public DNS Namespace resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Discovery Public DNS Namespace using the namespace ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicediscovery/publicDnsNamespace:PublicDnsNamespace example 0123456789
/// ```
class PublicDnsNamespace extends CustomResource {
  /// The ARN that Amazon Route 53 assigns to the namespace when you create it.
  late final Output<String> arn;

  /// The description that you specify for the namespace when you create it.
  late final Output<String?> description;

  /// The ID for the hosted zone that Amazon Route 53 creates when you create a namespace.
  late final Output<String> hostedZone;

  /// The name of the namespace.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the namespace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  PublicDnsNamespace(
    String name, {
    PublicDnsNamespaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/publicDnsNamespace:PublicDnsNamespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.hostedZone = registerOutput<String>('hostedZone');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
