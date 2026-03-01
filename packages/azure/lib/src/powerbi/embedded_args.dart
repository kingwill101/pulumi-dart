// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_powerbi_embedded_embedded_args_doc}
/// The set of arguments for Embedded.
/// {@endtemplate}
/// {@macro pulumi_powerbi_embedded_embedded_args_doc}
class EmbeddedArgs {
  /// A set of administrator user identities, which manages the Power BI Embedded and must be a member user or a service principal in your AAD tenant.
  final pulumi.Input<List<String>> administrators;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Sets the PowerBI Embedded's mode. Possible values include: `Gen1`, `Gen2`. Defaults to `Gen1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mode;
  /// The name of the PowerBI Embedded. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the PowerBI Embedded should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Sets the PowerBI Embedded's pricing level's SKU. Possible values include: `A1`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7` and `A8`.
  final pulumi.Input<String> skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EmbeddedArgs].
  /// [administrators] A set of administrator user identities, which manages the Power BI Embedded and must be a member user or a service principal in your AAD tenant.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [mode] Sets the PowerBI Embedded's mode. Possible values include: `Gen1`, `Gen2`. Defaults to `Gen1`. Changing this forces a new resource to be created.
  /// [name] The name of the PowerBI Embedded. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the PowerBI Embedded should be created. Changing this forces a new resource to be created.
  /// [skuName] Sets the PowerBI Embedded's pricing level's SKU. Possible values include: `A1`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7` and `A8`.
  /// [tags] A mapping of tags to assign to the resource.
  EmbeddedArgs({
    required List<String> administrators,
    String? location,
    String? mode,
    String? name,
    required String resourceGroupName,
    required String skuName,
    Map<String, String>? tags,
  }) :
      administrators = pulumi.Input.asInput<List<String>>(administrators),
      location = pulumi.Input.asOptionalInput<String>(location),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrators': administrators,
      'location': ?location,
      'mode': ?mode,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory EmbeddedArgs.fromMap(Map<String, dynamic> map) {
    return EmbeddedArgs(
      administrators: (map['administrators'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

