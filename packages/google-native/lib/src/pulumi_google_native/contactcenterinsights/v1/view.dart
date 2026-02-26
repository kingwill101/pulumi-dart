import 'package:pulumi/pulumi.dart';
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
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.value = Output.createUnknown<String>();
  }
}
