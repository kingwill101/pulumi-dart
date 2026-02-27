import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_args.dart';

/// Creates and manages an AWS IoT Thing.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IOT Things using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/thing:Thing example example
/// ```
class Thing extends pulumi.CustomResource {
  /// The ARN of the thing.
  late final pulumi.Output<String> arn;

  /// Map of attributes of the thing.
  late final pulumi.Output<Map<String, String>?> attributes;

  /// The default client ID.
  late final pulumi.Output<String> defaultClientId;

  /// The name of the thing.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The thing type name.
  late final pulumi.Output<String?> thingTypeName;

  /// The current version of the thing record in the registry.
  late final pulumi.Output<int> version;

  Thing(
    String name, {
    ThingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/thing:Thing',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attributes = registerOutput<Map<String, String>?>('attributes');
    this.defaultClientId = registerOutput<String>('defaultClientId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.thingTypeName = registerOutput<String?>('thingTypeName');
    this.version = registerOutput<int>('version');
  }
}
