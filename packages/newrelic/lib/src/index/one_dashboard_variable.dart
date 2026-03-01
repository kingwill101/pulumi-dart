// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_variable_item.dart';
import 'one_dashboard_variable_nrql_query.dart';
import 'one_dashboard_variable_option.dart';

class OneDashboardVariable {
  /// (Optional) A list of default values for this variable. To select **all** default values, the appropriate value to be used with this argument would be `["*"]`.
  final List<String>? defaultValues;
  /// (Optional) Indicates whether this variable supports multiple selection or not. Only applies to variables of type `nrql` or `enum`.
  final bool? isMultiSelection;
  /// (Optional) List of possible values for variables of type `enum`. See Nested item blocks below for details.
  final List<OneDashboardVariableItem>? items;
  /// The title of the dashboard.
  final String name;
  /// (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  final OneDashboardVariableNrqlQuery? nrqlQuery;
  /// (Optional) Specifies additional options to be added to dashboard variables. Supports the following nested attribute(s) -
  final List<OneDashboardVariableOption>? options;
  /// (Optional) Indicates the strategy to apply when replacing a variable in a NRQL query. One of `default`, `identifier`, `number` or `string`.
  final String replacementStrategy;
  /// (Optional) A human-friendly display string for this value.
  final String title;
  /// (Required) Specifies the data type of the variable and where its possible values may come from. One of `enum`, `nrql` or `string`
  final String type;

  /// Creates a new [OneDashboardVariable].
  /// [defaultValues] (Optional) A list of default values for this variable. To select **all** default values, the appropriate value to be used with this argument would be `["*"]`.
  /// [isMultiSelection] (Optional) Indicates whether this variable supports multiple selection or not. Only applies to variables of type `nrql` or `enum`.
  /// [items] (Optional) List of possible values for variables of type `enum`. See Nested item blocks below for details.
  /// [name] The title of the dashboard.
  /// [nrqlQuery] (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  /// [options] (Optional) Specifies additional options to be added to dashboard variables. Supports the following nested attribute(s) -
  /// [replacementStrategy] (Optional) Indicates the strategy to apply when replacing a variable in a NRQL query. One of `default`, `identifier`, `number` or `string`.
  /// [title] (Optional) A human-friendly display string for this value.
  /// [type] (Required) Specifies the data type of the variable and where its possible values may come from. One of `enum`, `nrql` or `string`
  OneDashboardVariable({
    this.defaultValues,
    this.isMultiSelection,
    this.items,
    required this.name,
    this.nrqlQuery,
    this.options,
    required this.replacementStrategy,
    required this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValues': ?defaultValues,
      'isMultiSelection': ?isMultiSelection,
      'items': ?items == null ? null : pulumi.Input.encodeList<OneDashboardVariableItem, Map<String, dynamic>>(items!, (value) => value.toMap()),
      'name': name,
      'nrqlQuery': ?nrqlQuery == null ? null : nrqlQuery!.toMap(),
      'options': ?options == null ? null : pulumi.Input.encodeList<OneDashboardVariableOption, Map<String, dynamic>>(options!, (value) => value.toMap()),
      'replacementStrategy': replacementStrategy,
      'title': title,
      'type': type,
    };
  }

  factory OneDashboardVariable.fromMap(Map<String, dynamic> map) {
    return OneDashboardVariable(
      defaultValues: map['defaultValues'] == null ? null : (map['defaultValues'] as List).cast<String>(),
      isMultiSelection: map['isMultiSelection'] == null ? null : map['isMultiSelection'] as bool,
      items: map['items'] == null ? null : pulumi.Input.decodeList<OneDashboardVariableItem>(map['items'], (value) => OneDashboardVariableItem.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nrqlQuery: map['nrqlQuery'] == null ? null : OneDashboardVariableNrqlQuery.fromMap((map['nrqlQuery'] as Map).cast<String, dynamic>()),
      options: map['options'] == null ? null : pulumi.Input.decodeList<OneDashboardVariableOption>(map['options'], (value) => OneDashboardVariableOption.fromMap((value as Map).cast<String, dynamic>())),
      replacementStrategy: map['replacementStrategy'] as String,
      title: map['title'] as String,
      type: map['type'] as String,
    );
  }
}

