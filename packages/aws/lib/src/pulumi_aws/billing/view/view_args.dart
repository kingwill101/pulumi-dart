// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../view_data_filter_expression/view_data_filter_expression.dart';
import '../view_timeouts/view_timeouts.dart';

/// The set of arguments for View.
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

  ViewArgs({
    this.dataFilterExpression,
    this.description,
    this.name,
    this.sourceViews,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataFilterExpressionValue = dataFilterExpression;
    if (dataFilterExpressionValue != null) {
      map['dataFilterExpression'] = pulumi.Input.mapOptionalInputValue<
              ViewDataFilterExpression, Map<String, dynamic>>(
          dataFilterExpressionValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final sourceViewsValue = sourceViews;
    if (sourceViewsValue != null) {
      map['sourceViews'] = sourceViewsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ViewTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      dataFilterExpression:
          pulumi.Input.asOptionalInput<ViewDataFilterExpression>(
              map['dataFilterExpression']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      sourceViews:
          pulumi.Input.asOptionalInput<List<String>>(map['sourceViews']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ViewTimeouts>(map['timeouts']),
    );
  }
}
