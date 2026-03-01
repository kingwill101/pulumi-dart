// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_view_args_doc}
/// Arguments for getView.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_view_args_doc}
class GetViewArgs {
  /// View name
  final pulumi.Input<String> viewName;

  /// Creates a new [GetViewArgs].
  /// [viewName] View name
  GetViewArgs({
    required pulumi.Output<String> viewName,
  }) :
      viewName = pulumi.Input.asInput<String>(viewName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'viewName': viewName,
    };
  }

  factory GetViewArgs.fromMap(Map<String, dynamic> map) {
    return GetViewArgs(
      viewName: pulumi.Output.create<String>(map['viewName'] as String),
    );
  }
}

