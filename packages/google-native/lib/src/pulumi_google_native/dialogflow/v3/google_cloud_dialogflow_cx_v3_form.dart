// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3_form_parameter.dart';

/// A form is a data model that groups related parameters that can be collected from the user. The process in which the agent prompts the user and collects parameter values from the user is called form filling. A form can be added to a page. When form filling is done, the filled parameters will be written to the session.
class GoogleCloudDialogflowCxV3Form {
  /// Parameters to collect from the user.
  final List<GoogleCloudDialogflowCxV3FormParameter>? parameters;

  GoogleCloudDialogflowCxV3Form({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.encodeList<
          GoogleCloudDialogflowCxV3FormParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3Form.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3Form(
      parameters: map['parameters'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3FormParameter>(
              map['parameters'],
              (value) => GoogleCloudDialogflowCxV3FormParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
