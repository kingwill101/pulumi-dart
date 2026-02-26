// ignore_for_file: unused_element, unnecessary_cast

class CxWebhookGenericWebServiceServiceAccountAuthConfig {
  /// The email address of the service account used to authenticate the webhook call.
  /// Dialogflow uses this service account to exchange an access token and the access
  /// token is then sent in the **Authorization** header of the webhook request.
  /// The service account must have the **roles/iam.serviceAccountTokenCreator** role
  /// granted to the
  /// [Dialogflow service agent](https://cloud.google.com/iam/docs/service-agents?_gl=1*1jsujvh*_ga*NjYxMzU3OTg2LjE3Njc3MzQ4NjM.*_ga_WH2QY8WWF5*czE3Njc3MzQ2MjgkbzIkZzEkdDE3Njc3MzQ3NzQkajYwJGwwJGgw#dialogflow-service-agent).
  final String serviceAccount;

  CxWebhookGenericWebServiceServiceAccountAuthConfig({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccount'] = serviceAccount;
    return map;
  }

  factory CxWebhookGenericWebServiceServiceAccountAuthConfig.fromMap(
      Map<String, dynamic> map) {
    return CxWebhookGenericWebServiceServiceAccountAuthConfig(
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}
