import 'package:pulumi/pulumi.dart' hide Config;
import 'view_args.dart';

/// Creates a view.
class View extends CustomResource {
  /// The time at which this view was created.
  late final Output<String> createTime;

  /// The human-readable display name of the view.
  late final Output<String> displayName;
  late final Output<String> location;

  /// Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  late final Output<String> name;
  late final Output<String> project;

  /// The most recent time at which the view was updated.
  late final Output<String> updateTime;

  /// String with specific view properties, must be non-empty.
  late final Output<String> value;

  View(
    String name, {
    ViewArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:contactcenterinsights/v1:View',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
    this.value = registerOutput<String>('value');
  }
}
