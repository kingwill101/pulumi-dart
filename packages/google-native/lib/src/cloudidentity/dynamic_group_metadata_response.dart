// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_query_response.dart';
import 'dynamic_group_status_response.dart';

/// Dynamic group metadata like queries and status.
class DynamicGroupMetadataResponse {
  /// Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  final List<DynamicGroupQueryResponse> queries;

  /// Status of the dynamic group.
  final DynamicGroupStatusResponse status;

  /// Creates a new [DynamicGroupMetadataResponse].
  /// [queries] Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  /// [status] Status of the dynamic group.
  DynamicGroupMetadataResponse({required this.queries, required this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queries':
          pulumi.Input.encodeList<
            DynamicGroupQueryResponse,
            Map<String, dynamic>
          >(queries, (value) => value.toMap()),
      'status': status.toMap(),
    };
  }

  factory DynamicGroupMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DynamicGroupMetadataResponse(
      queries: pulumi.Input.decodeList<DynamicGroupQueryResponse>(
        map['queries'],
        (value) => DynamicGroupQueryResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: DynamicGroupStatusResponse.fromMap(
        (map['status'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
