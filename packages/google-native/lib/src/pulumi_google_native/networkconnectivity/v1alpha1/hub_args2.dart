// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Hub.
class HubArgs2 {
  /// Time when the Hub was created.
  final Input<String>? createTime;

  /// Short description of the hub resource.
  final Input<String>? description;

  /// Optional. Unique id for the Hub to create.
  final Input<String>? hubId;

  /// User-defined labels.
  final Input<Map<String, String>>? labels;

  /// Immutable. The name of a Hub resource.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Time when the Hub was updated.
  final Input<String>? updateTime;

  HubArgs2({
    this.createTime,
    this.description,
    this.hubId,
    this.labels,
    this.name,
    this.project,
    this.requestId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final hubIdValue = hubId;
    if (hubIdValue != null) {
      map['hubId'] = hubIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
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
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory HubArgs2.fromMap(Map<String, dynamic> map) {
    return HubArgs2(
      createTime: Input.asOptionalInput<String>(map['createTime']),
      description: Input.asOptionalInput<String>(map['description']),
      hubId: Input.asOptionalInput<String>(map['hubId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      updateTime: Input.asOptionalInput<String>(map['updateTime']),
    );
  }
}
