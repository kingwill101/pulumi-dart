// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_data_filter_expression.dart';
import 'view_timeouts.dart';

/// Input properties used for looking up and filtering View resources.
class ViewState {
  /// ARN of the View.
  final pulumi.Input<String>? arn;

  /// Type of billing group. Valid values are PRIMARY|BILLING_GROUP|CUSTOM.
  final pulumi.Input<String>? billingViewType;

  /// Timestamp when the billing view was created.
  final pulumi.Input<String>? createdAt;

  /// Filter Cost Explorer APIs using the expression. Refer to the data-filter-expression block documentation for more details.
  final pulumi.Input<ViewDataFilterExpression>? dataFilterExpression;

  /// Number of billing views that use this billing view as a source.
  final pulumi.Input<int>? derivedViewCount;

  /// Description of the custom billing view.
  final pulumi.Input<String>? description;

  /// Name of the custom billing view to be created.
  final pulumi.Input<String>? name;

  /// Account owner of the billing view.
  final pulumi.Input<String>? ownerAccountId;

  /// AWS account ID that owns the source billing view, if this is a derived billing view.
  final pulumi.Input<String>? sourceAccountId;

  /// Number of source views associated with this billing view.
  final pulumi.Input<int>? sourceViewCount;

  /// List of ARNs of the source data views for the custom billing view.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? sourceViews;

  /// List of key value map specifying tags associated to the billing view being created.
  final pulumi.Input<Map<String, String>>? tags;

  /// List of key value map specifying tags associated to the billing view.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ViewTimeouts>? timeouts;

  /// Time when the billing view was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Timestamp of when the billing view definition was last updated.
  final pulumi.Input<String>? viewDefinitionLastUpdatedAt;

  /// Creates a new [ViewState].
  /// [arn] ARN of the View.
  /// [billingViewType] Type of billing group. Valid values are PRIMARY|BILLING_GROUP|CUSTOM.
  /// [createdAt] Timestamp when the billing view was created.
  /// [dataFilterExpression] Filter Cost Explorer APIs using the expression. Refer to the data-filter-expression block documentation for more details.
  /// [derivedViewCount] Number of billing views that use this billing view as a source.
  /// [description] Description of the custom billing view.
  /// [name] Name of the custom billing view to be created.
  /// [ownerAccountId] Account owner of the billing view.
  /// [sourceAccountId] AWS account ID that owns the source billing view, if this is a derived billing view.
  /// [sourceViewCount] Number of source views associated with this billing view.
  /// [sourceViews] List of ARNs of the source data views for the custom billing view.
  /// [tags] List of key value map specifying tags associated to the billing view being created.
  /// [tagsAll] List of key value map specifying tags associated to the billing view.
  /// [timeouts] Optional.
  /// [updatedAt] Time when the billing view was last updated.
  /// [viewDefinitionLastUpdatedAt] Timestamp of when the billing view definition was last updated.
  ViewState({
    this.arn,
    this.billingViewType,
    this.createdAt,
    this.dataFilterExpression,
    this.derivedViewCount,
    this.description,
    this.name,
    this.ownerAccountId,
    this.sourceAccountId,
    this.sourceViewCount,
    this.sourceViews,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.updatedAt,
    this.viewDefinitionLastUpdatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'billingViewType': ?billingViewType,
      'createdAt': ?createdAt,
      'dataFilterExpression':
          ?pulumi.Input.mapOptionalInputValue<
            ViewDataFilterExpression,
            Map<String, dynamic>
          >(dataFilterExpression, (value) => value.toMap()),
      'derivedViewCount': ?derivedViewCount,
      'description': ?description,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'sourceAccountId': ?sourceAccountId,
      'sourceViewCount': ?sourceViewCount,
      'sourceViews': ?sourceViews,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ViewTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
      'viewDefinitionLastUpdatedAt': ?viewDefinitionLastUpdatedAt,
    };
  }

  factory ViewState.fromMap(Map<String, dynamic> map) {
    return ViewState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      billingViewType: (() {
        final guardedValue = map['billingViewType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataFilterExpression: (() {
        final guardedValue = map['dataFilterExpression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ViewDataFilterExpression.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      derivedViewCount: (() {
        final guardedValue = map['derivedViewCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerAccountId: (() {
        final guardedValue = map['ownerAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceAccountId: (() {
        final guardedValue = map['sourceAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceViewCount: (() {
        final guardedValue = map['sourceViewCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sourceViews: (() {
        final guardedValue = map['sourceViews'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ViewTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      updatedAt: (() {
        final guardedValue = map['updatedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      viewDefinitionLastUpdatedAt: (() {
        final guardedValue = map['viewDefinitionLastUpdatedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
