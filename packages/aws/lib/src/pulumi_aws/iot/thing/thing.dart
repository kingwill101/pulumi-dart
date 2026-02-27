import 'package:pulumi/pulumi.dart';
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
class Thing extends CustomResource {
  /// The ARN of the thing.
  late final Output<String> arn;

  /// Map of attributes of the thing.
  late final Output<Map<String, String>?> attributes;

  /// The default client ID.
  late final Output<String> defaultClientId;

  /// The name of the thing.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The thing type name.
  late final Output<String?> thingTypeName;

  /// The current version of the thing record in the registry.
  late final Output<int> version;

  Thing(
    String name, {
    ThingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/thing:Thing',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
