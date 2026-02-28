// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_group_type.dart';

/// {@template pulumi_networksecurity_v1_address_group_args_doc}
/// The set of arguments for AddressGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_address_group_args_doc}
class AddressGroupArgs {
  /// Required. Short name of the AddressGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  final pulumi.Input<String> addressGroupId;

  /// Capacity of the Address Group
  final pulumi.Input<int> capacity;

  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Optional. List of items.
  final pulumi.Input<List<String>>? items;

  /// Optional. Set of label tags associated with the AddressGroup resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The type of the Address Group. Possible values are "IPv4" or "IPV6".
  final pulumi.Input<AddressGroupType> type;

  /// Creates a new [AddressGroupArgs].
  /// [addressGroupId] Required. Short name of the AddressGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  /// [capacity] Capacity of the Address Group
  /// [description] Optional. Free-text description of the resource.
  /// [items] Optional. List of items.
  /// [labels] Optional. Set of label tags associated with the AddressGroup resource.
  /// [location] Optional.
  /// [name] Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] The type of the Address Group. Possible values are "IPv4" or "IPV6".
  AddressGroupArgs({
    required String addressGroupId,
    required int capacity,
    String? description,
    List<String>? items,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? requestId,
    required AddressGroupType type,
  })  : addressGroupId = pulumi.Input.asInput<String>(addressGroupId),
        capacity = pulumi.Input.asInput<int>(capacity),
        description = pulumi.Input.asOptionalInput<String>(description),
        items = pulumi.Input.asOptionalInput<List<String>>(items),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        type = pulumi.Input.asInput<AddressGroupType>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressGroupId'] = addressGroupId;
    map['capacity'] = capacity;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['type'] = pulumi.Input.mapInputValue<AddressGroupType, String>(
        type, (value) => value.value);
    return map;
  }

  factory AddressGroupArgs.fromMap(Map<String, dynamic> map) {
    return AddressGroupArgs(
      addressGroupId: map['addressGroupId'] as String,
      capacity: map['capacity'] as int,
      description:
          map['description'] == null ? null : map['description'] as String,
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      type: AddressGroupType.fromValue(map['type'] as String),
    );
  }
}
