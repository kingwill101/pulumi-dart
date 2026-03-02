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
      'dataFilterExpression': ?pulumi.Input.mapOptionalInputValue<ViewDataFilterExpression, Map<String, dynamic>>(dataFilterExpression, (value) => value.toMap()),
      'derivedViewCount': ?derivedViewCount,
      'description': ?description,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'sourceAccountId': ?sourceAccountId,
      'sourceViewCount': ?sourceViewCount,
      'sourceViews': ?sourceViews,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ViewTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
      'viewDefinitionLastUpdatedAt': ?viewDefinitionLastUpdatedAt,
    };
  }

  factory ViewState.fromMap(Map<String, dynamic> map) {
    return ViewState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      billingViewType: map['billingViewType'] == null ? null : ((map['billingViewType'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      dataFilterExpression: map['dataFilterExpression'] == null ? null : ((ViewDataFilterExpression.fromMap((map['dataFilterExpression']! as Map).cast<String, dynamic>())).input()).input(),
      derivedViewCount: map['derivedViewCount'] == null ? null : ((map['derivedViewCount'] as int).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : ((map['ownerAccountId'] as String).input()).input(),
      sourceAccountId: map['sourceAccountId'] == null ? null : ((map['sourceAccountId'] as String).input()).input(),
      sourceViewCount: map['sourceViewCount'] == null ? null : ((map['sourceViewCount'] as int).input()).input(),
      sourceViews: map['sourceViews'] == null ? null : (((map['sourceViews'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ViewTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      updatedAt: map['updatedAt'] == null ? null : ((map['updatedAt'] as String).input()).input(),
      viewDefinitionLastUpdatedAt: map['viewDefinitionLastUpdatedAt'] == null ? null : ((map['viewDefinitionLastUpdatedAt'] as String).input()).input(),
    );
  }
}

