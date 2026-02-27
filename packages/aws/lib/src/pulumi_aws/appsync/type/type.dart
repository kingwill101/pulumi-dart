import 'package:pulumi/pulumi.dart' as pulumi;
import 'type_args.dart';

/// Provides an AppSync Type.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Appsync Types using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/type:Type example api-id:format:name
/// ```
class Type extends pulumi.CustomResource {
  /// GraphQL API ID.
  late final pulumi.Output<String> apiId;

  /// The ARN of the type.
  late final pulumi.Output<String> arn;

  /// The type definition.
  late final pulumi.Output<String> definition;

  /// The type description.
  late final pulumi.Output<String> description;

  /// The type format: `SDL` or `JSON`.
  late final pulumi.Output<String> format;

  /// The type name.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  Type(
    String name, {
    TypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/type:Type',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.arn = registerOutput<String>('arn');
    this.definition = registerOutput<String>('definition');
    this.description = registerOutput<String>('description');
    this.format = registerOutput<String>('format');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
