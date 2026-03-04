// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_action_attachment_response.dart';
import 'sku_type_response.dart';
import 'system_data_response.dart';

/// Result data returned by getEdgeAction.
class GetEdgeActionResult {
  /// A list of attachments for the edge action
  final List<EdgeActionAttachmentResponse> attachments;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// The provisioning state of the edge action
  final String provisioningState;

  /// The sku type of the edge action
  final SkuTypeResponse sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEdgeActionResult].
  /// [attachments] A list of attachments for the edge action
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the edge action
  /// [sku] The sku type of the edge action
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEdgeActionResult({
    required this.attachments,
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments':
          pulumi.Input.encodeList<
            EdgeActionAttachmentResponse,
            Map<String, dynamic>
          >(attachments, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetEdgeActionResult.fromMap(Map<String, dynamic> map) {
    return GetEdgeActionResult(
      attachments: pulumi.Input.decodeList<EdgeActionAttachmentResponse>(
        map['attachments']!,
        (value) => EdgeActionAttachmentResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: SkuTypeResponse.fromMap(
        (map['sku']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
