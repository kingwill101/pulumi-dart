// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_groups_group.dart';

/// Result data returned by getEndpointGroups.
class GetEndpointGroupsResult {
  final String acceleratorId;
  final String? endpointGroupType;
  /// A list of Ga Endpoint Groups. Each element contains the following attributes:
  final List<GetEndpointGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The ID of the listener that is associated with the endpoint group.
  final String? listenerId;
  final String? nameRegex;
  /// A list of Endpoint Group names.
  final List<String> names;
  final String? outputFile;
  /// The status of the endpoint group.
  final String? status;

  /// Creates a new [GetEndpointGroupsResult].
  /// [acceleratorId] Required.
  /// [endpointGroupType] Optional.
  /// [groups] A list of Ga Endpoint Groups. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listenerId] The ID of the listener that is associated with the endpoint group.
  /// [nameRegex] Optional.
  /// [names] A list of Endpoint Group names.
  /// [outputFile] Optional.
  /// [status] The status of the endpoint group.
  GetEndpointGroupsResult({
    required this.acceleratorId,
    this.endpointGroupType,
    required this.groups,
    required this.id,
    required this.ids,
    this.listenerId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'endpointGroupType': ?endpointGroupType,
      'groups': pulumi.Input.encodeList<GetEndpointGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'listenerId': ?listenerId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetEndpointGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointGroupsResult(
      acceleratorId: map['acceleratorId'] as String,
      endpointGroupType: (() { final guardedValue = map['endpointGroupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groups: pulumi.Input.decodeList<GetEndpointGroupsGroup>(map['groups']!, (value) => GetEndpointGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

