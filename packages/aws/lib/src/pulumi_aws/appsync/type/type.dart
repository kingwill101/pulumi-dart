import 'package:pulumi/pulumi.dart';
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
class Type extends CustomResource {
  /// GraphQL API ID.
  late final Output<String> apiId;

  /// The ARN of the type.
  late final Output<String> arn;

  /// The type definition.
  late final Output<String> definition;

  /// The type description.
  late final Output<String> description;

  /// The type format: `SDL` or `JSON`.
  late final Output<String> format;

  /// The type name.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Type(
    String name, {
    TypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/type:Type',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
