import 'package:pulumi/pulumi.dart';
import 'documentation_version_args.dart';

/// Provides a resource to manage an API Gateway Documentation Version.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway documentation versions using `REST-API-ID/VERSION`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/documentationVersion:DocumentationVersion example 5i4e1ko720/example-version
/// ```
class DocumentationVersion extends CustomResource {
  /// Description of the API documentation version.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the associated Rest API
  late final Output<String> restApiId;

  /// Version identifier of the API documentation snapshot.
  late final Output<String> version;

  DocumentationVersion(
    String name, {
    DocumentationVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/documentationVersion:DocumentationVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.restApiId = registerOutput<String>('restApiId');
    this.version = registerOutput<String>('version');
  }
}
