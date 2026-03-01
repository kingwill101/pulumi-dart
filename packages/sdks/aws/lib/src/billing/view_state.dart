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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? billingViewType,
    pulumi.Output<String>? createdAt,
    pulumi.Output<ViewDataFilterExpression>? dataFilterExpression,
    pulumi.Output<int>? derivedViewCount,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? sourceAccountId,
    pulumi.Output<int>? sourceViewCount,
    pulumi.Output<List<String>>? sourceViews,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ViewTimeouts>? timeouts,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<String>? viewDefinitionLastUpdatedAt,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      billingViewType = pulumi.Input.asOptionalInput<String>(billingViewType),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      dataFilterExpression = pulumi.Input.asOptionalInput<ViewDataFilterExpression>(dataFilterExpression),
      derivedViewCount = pulumi.Input.asOptionalInput<int>(derivedViewCount),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      sourceAccountId = pulumi.Input.asOptionalInput<String>(sourceAccountId),
      sourceViewCount = pulumi.Input.asOptionalInput<int>(sourceViewCount),
      sourceViews = pulumi.Input.asOptionalInput<List<String>>(sourceViews),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ViewTimeouts>(timeouts),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      viewDefinitionLastUpdatedAt = pulumi.Input.asOptionalInput<String>(viewDefinitionLastUpdatedAt);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      billingViewType: map['billingViewType'] == null ? null : pulumi.Output.create<String>(map['billingViewType'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      dataFilterExpression: map['dataFilterExpression'] == null ? null : pulumi.Output.create<ViewDataFilterExpression>(ViewDataFilterExpression.fromMap((map['dataFilterExpression'] as Map).cast<String, dynamic>())),
      derivedViewCount: map['derivedViewCount'] == null ? null : pulumi.Output.create<int>(map['derivedViewCount'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      sourceAccountId: map['sourceAccountId'] == null ? null : pulumi.Output.create<String>(map['sourceAccountId'] as String),
      sourceViewCount: map['sourceViewCount'] == null ? null : pulumi.Output.create<int>(map['sourceViewCount'] as int),
      sourceViews: map['sourceViews'] == null ? null : pulumi.Output.create<List<String>>((map['sourceViews'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ViewTimeouts>(ViewTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      viewDefinitionLastUpdatedAt: map['viewDefinitionLastUpdatedAt'] == null ? null : pulumi.Output.create<String>(map['viewDefinitionLastUpdatedAt'] as String),
    );
  }
}

