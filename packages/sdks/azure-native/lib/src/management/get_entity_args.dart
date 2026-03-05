// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_get_entity_args_doc}
/// Arguments for getEntity.
/// {@endtemplate}
/// {@macro pulumi_management_get_entity_args_doc}
class GetEntityArgs {
  /// The filter parameter allows you to filter on the the name or display name fields. You can check for equality on the name field (e.g. name eq '{entityName}')  and you can check for substrings on either the name or display name fields(e.g. contains(name, '{substringToSearch}'), contains(displayName, '{substringToSearch')). Note that the '{entityName}' and '{substringToSearch}' fields are checked case insensitively.
  final pulumi.Input<String>? filter;
  /// A filter which allows the get entities call to focus on a particular group (i.e. "$filter=name eq 'groupName'")
  final pulumi.Input<String>? groupName;
  /// The $search parameter is used in conjunction with the $filter parameter to return three different outputs depending on the parameter passed in.
  /// With $search=AllowedParents the API will return the entity info of all groups that the requested entity will be able to reparent to as determined by the user's permissions.
  /// With $search=AllowedChildren the API will return the entity info of all entities that can be added as children of the requested entity.
  /// With $search=ParentAndFirstLevelChildren the API will return the parent and  first level of children that the user has either direct access to or indirect access via one of their descendants.
  /// With $search=ParentOnly the API will return only the group if the user has access to at least one of the descendants of the group.
  /// With $search=ChildrenOnly the API will return only the first level of children of the group entity info specified in $filter.  The user must have direct access to the children entities or one of it's descendants for it to show up in the results.
  final pulumi.Input<String>? search;
  /// This parameter specifies the fields to include in the response. Can include any combination of Name,DisplayName,Type,ParentDisplayNameChain,ParentChain, e.g. '$select=Name,DisplayName,Type,ParentDisplayNameChain,ParentNameChain'. When specified the $select parameter can override select in $skipToken.
  final pulumi.Input<String>? select;
  /// Number of entities to skip over when retrieving results. Passing this in will override $skipToken.
  final pulumi.Input<int>? skip;
  /// Page continuation token is only used if a previous operation returned a partial result.
  /// If a previous response contains a nextLink element, the value of the nextLink element will include a token parameter that specifies a starting point to use for subsequent calls.
  final pulumi.Input<String>? skiptoken;
  /// Number of elements to return when retrieving results. Passing this in will override $skipToken.
  final pulumi.Input<int>? top;
  /// The view parameter allows clients to filter the type of data that is returned by the getEntities call.
  final pulumi.Input<String>? view;

  /// Creates a new [GetEntityArgs].
  /// [filter] The filter parameter allows you to filter on the the name or display name fields. You can check for equality on the name field (e.g. name eq '{entityName}')  and you can check for substrings on either the name or display name fields(e.g. contains(name, '{substringToSearch}'), contains(displayName, '{substringToSearch')). Note that the '{entityName}' and '{substringToSearch}' fields are checked case insensitively.
  /// [groupName] A filter which allows the get entities call to focus on a particular group (i.e. "$filter=name eq 'groupName'")
  /// [search] The $search parameter is used in conjunction with the $filter parameter to return three different outputs depending on the parameter passed in.
  /// [select] This parameter specifies the fields to include in the response. Can include any combination of Name,DisplayName,Type,ParentDisplayNameChain,ParentChain, e.g. '$select=Name,DisplayName,Type,ParentDisplayNameChain,ParentNameChain'. When specified the $select parameter can override select in $skipToken.
  /// [skip] Number of entities to skip over when retrieving results. Passing this in will override $skipToken.
  /// [skiptoken] Page continuation token is only used if a previous operation returned a partial result.
  /// [top] Number of elements to return when retrieving results. Passing this in will override $skipToken.
  /// [view] The view parameter allows clients to filter the type of data that is returned by the getEntities call.
  GetEntityArgs({
    this.filter,
    this.groupName,
    this.search,
    this.select,
    this.skip,
    this.skiptoken,
    this.top,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'groupName': ?groupName,
      'search': ?search,
      'select': ?select,
      'skip': ?skip,
      'skiptoken': ?skiptoken,
      'top': ?top,
      'view': ?view,
    };
  }

  factory GetEntityArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      select: (() { final guardedValue = map['select']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      skiptoken: (() { final guardedValue = map['skiptoken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

