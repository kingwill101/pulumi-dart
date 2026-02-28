// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_form_parameter.dart';

/// A form is a data model that groups related parameters that can be collected from the user. The process in which the agent prompts the user and collects parameter values from the user is called form filling. A form can be added to a page. When form filling is done, the filled parameters will be written to the session.
class GoogleCloudDialogflowCxV3beta1Form {
  /// Parameters to collect from the user.
  final List<GoogleCloudDialogflowCxV3beta1FormParameter>? parameters;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1Form].
  /// [parameters] Parameters to collect from the user.
  GoogleCloudDialogflowCxV3beta1Form({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowCxV3beta1FormParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1Form.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1Form(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowCxV3beta1FormParameter>(
              map['parameters'],
              (value) => GoogleCloudDialogflowCxV3beta1FormParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
