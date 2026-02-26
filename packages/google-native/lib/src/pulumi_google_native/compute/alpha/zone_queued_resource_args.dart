// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'bulk_insert_instance_resource.dart';
import 'queuing_policy.dart';

/// The set of arguments for ZoneQueuedResource.
class ZoneQueuedResourceArgs {
  /// Specification of VM instances to create.
  final Input<BulkInsertInstanceResource>? bulkInsertInstanceResource;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;

  /// Queuing parameters for the requested capacity.
  final Input<QueuingPolicy>? queuingPolicy;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;
  final Input<String>? zone;

  ZoneQueuedResourceArgs({
    this.bulkInsertInstanceResource,
    this.description,
    this.name,
    this.project,
    this.queuingPolicy,
    this.requestId,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bulkInsertInstanceResourceValue = bulkInsertInstanceResource;
    if (bulkInsertInstanceResourceValue != null) {
      map['bulkInsertInstanceResource'] = Input.mapOptionalInputValue<
              BulkInsertInstanceResource, Map<String, dynamic>>(
          bulkInsertInstanceResourceValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queuingPolicyValue = queuingPolicy;
    if (queuingPolicyValue != null) {
      map['queuingPolicy'] =
          Input.mapOptionalInputValue<QueuingPolicy, Map<String, dynamic>>(
              queuingPolicyValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory ZoneQueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return ZoneQueuedResourceArgs(
      bulkInsertInstanceResource:
          Input.asOptionalInput<BulkInsertInstanceResource>(
              map['bulkInsertInstanceResource']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      queuingPolicy: Input.asOptionalInput<QueuingPolicy>(map['queuingPolicy']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
