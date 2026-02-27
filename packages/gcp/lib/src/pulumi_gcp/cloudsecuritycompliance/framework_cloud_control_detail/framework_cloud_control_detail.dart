// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../framework_cloud_control_detail_parameter/framework_cloud_control_detail_parameter.dart';

class FrameworkCloudControlDetail {
  /// Major revision of cloudcontrol
  final String majorRevisionId;

  /// The name of the CloudControl in the format:
  /// “organizations/{organization}/locations/{location}/cloudControls/{cloud-control}”
  final String name;

  /// Parameters is a key-value pair that is required by the CloudControl. The
  /// specification of these parameters will be present in cloudcontrol.Eg: {
  /// "name": "location","value": "us-west-1"}.
  /// Structure is documented below.
  final List<FrameworkCloudControlDetailParameter>? parameters;

  FrameworkCloudControlDetail({
    required this.majorRevisionId,
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['majorRevisionId'] = majorRevisionId;
    map['name'] = name;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          FrameworkCloudControlDetailParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory FrameworkCloudControlDetail.fromMap(Map<String, dynamic> map) {
    return FrameworkCloudControlDetail(
      majorRevisionId: map['majorRevisionId'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<FrameworkCloudControlDetailParameter>(
              map['parameters'],
              (value) => FrameworkCloudControlDetailParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
