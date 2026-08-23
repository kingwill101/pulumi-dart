// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_data_filter_expression.dart';
import 'view_timeouts.dart';

/// {@template pulumi_billing_view_view_args_doc}
/// The set of arguments for View.
/// {@endtemplate}
/// {@macro pulumi_billing_view_view_args_doc}
class ViewArgs {
  /// Filter Cost Explorer APIs using the expression. Refer to the data-filter-expression block documentation for more details.
  final pulumi.Input<ViewDataFilterExpression>? dataFilterExpression;
  /// Description of the custom billing view.
  final pulumi.Input<String>? description;
  /// Name of the custom billing view to be created.
  final pulumi.Input<String>? name;
  /// List of ARNs of the source data views for the custom billing view.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? sourceViews;
  /// List of key value map specifying tags associated to the billing view being created.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ViewTimeouts>? timeouts;

  /// Creates a new [ViewArgs].
  /// [dataFilterExpression] Filter Cost Explorer APIs using the expression. Refer to the data-filter-expression block documentation for more details.
  /// [description] Description of the custom billing view.
  /// [name] Name of the custom billing view to be created.
  /// [sourceViews] List of ARNs of the source data views for the custom billing view.
  /// [tags] List of key value map specifying tags associated to the billing view being created.
  /// [timeouts] Optional.
  const ViewArgs({
    this.dataFilterExpression,
    this.description,
    this.name,
    this.sourceViews,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFilterExpression': ?pulumi.Input.mapOptionalInputValue<ViewDataFilterExpression, Map<String, dynamic>>(dataFilterExpression, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'sourceViews': ?sourceViews,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ViewTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      dataFilterExpression: (() { final guardedValue = map['dataFilterExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ViewDataFilterExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceViews: (() { final guardedValue = map['sourceViews']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ViewTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
