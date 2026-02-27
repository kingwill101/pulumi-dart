import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_namespace_args.dart';

/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Discovery HTTP Namespace using the namespace ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicediscovery/httpNamespace:HttpNamespace example ns-1234567890
/// ```
class HttpNamespace extends pulumi.CustomResource {
  /// The ARN that Amazon Route 53 assigns to the namespace when you create it.
  late final pulumi.Output<String> arn;

  /// The description that you specify for the namespace when you create it.
  late final pulumi.Output<String?> description;

  /// The name of an HTTP namespace.
  late final pulumi.Output<String> httpName;

  /// The name of the http namespace.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the namespace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  HttpNamespace(
    String name, {
    HttpNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/httpNamespace:HttpNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.httpName = registerOutput<String>('httpName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
