// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_address_group_address_group_args_doc}
/// The set of arguments for AddressGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_address_group_address_group_args_doc}
class AddressGroupArgs {
  /// Capacity of the Address Group.
  final pulumi.Input<int> capacity;

  /// Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// List of items.
  final pulumi.Input<List<String>>? items;

  /// Set of label tags associated with the AddressGroup resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the gateway security policy.
  /// The default value is `global`.
  final pulumi.Input<String> location;

  /// Name of the AddressGroup resource.
  final pulumi.Input<String>? name;

  /// The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}.
  final pulumi.Input<String>? parent;

  /// List of supported purposes of the Address Group.
  /// Each value may be one of: `DEFAULT`, `CLOUD_ARMOR`.
  final pulumi.Input<List<String>>? purposes;

  /// The type of the Address Group. Possible values are "IPV4" or "IPV6".
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String> type;

  /// Creates a new [AddressGroupArgs].
  /// [capacity] Capacity of the Address Group.
  /// [description] Free-text description of the resource.
  /// [items] List of items.
  /// [labels] Set of label tags associated with the AddressGroup resource.
  /// [location] The location of the gateway security policy.
  /// [name] Name of the AddressGroup resource.
  /// [parent] The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}.
  /// [purposes] List of supported purposes of the Address Group.
  /// [type] The type of the Address Group. Possible values are "IPV4" or "IPV6".
  AddressGroupArgs({
    required int capacity,
    String? description,
    List<String>? items,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? parent,
    List<String>? purposes,
    required String type,
  })  : capacity = pulumi.Input.asInput<int>(capacity),
        description = pulumi.Input.asOptionalInput<String>(description),
        items = pulumi.Input.asOptionalInput<List<String>>(items),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        parent = pulumi.Input.asOptionalInput<String>(parent),
        purposes = pulumi.Input.asOptionalInput<List<String>>(purposes),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final purposesValue = purposes;
    if (purposesValue != null) {
      map['purposes'] = purposesValue;
    }
    map['type'] = type;
    return map;
  }

  factory AddressGroupArgs.fromMap(Map<String, dynamic> map) {
    return AddressGroupArgs(
      capacity: map['capacity'] as int,
      description:
          map['description'] == null ? null : map['description'] as String,
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
      purposes: map['purposes'] == null
          ? null
          : (map['purposes'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}
