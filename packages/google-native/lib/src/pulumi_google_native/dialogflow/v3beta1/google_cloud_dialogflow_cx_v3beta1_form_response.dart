// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_form_parameter_response.dart';

/// A form is a data model that groups related parameters that can be collected from the user. The process in which the agent prompts the user and collects parameter values from the user is called form filling. A form can be added to a page. When form filling is done, the filled parameters will be written to the session.
class GoogleCloudDialogflowCxV3beta1FormResponse {
  /// Parameters to collect from the user.
  final List<GoogleCloudDialogflowCxV3beta1FormParameterResponse> parameters;

  GoogleCloudDialogflowCxV3beta1FormResponse({
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameters'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowCxV3beta1FormParameterResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1FormResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FormResponse(
      parameters: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3beta1FormParameterResponse>(
          map['parameters'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1FormParameterResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
