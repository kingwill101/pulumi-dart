// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_feature_settings/application_feature_settings.dart';
import '../application_iap/application_iap.dart';

/// The set of arguments for Application.
class ApplicationArgs {
  /// The domain to authenticate users with when using App Engine's User API.
  final pulumi.Input<String>? authDomain;

  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// Can be `CLOUD_FIRESTORE` or `CLOUD_DATASTORE_COMPATIBILITY` for new
  /// instances.  To support old instances, the value `CLOUD_DATASTORE` is accepted by the provider, but will be rejected by the API.
  /// To create a Cloud Firestore database without creating an App Engine application, use the
  /// `gcp.firestore.Database`
  /// resource instead.
  final pulumi.Input<String>? databaseType;

  /// A block of optional settings to configure specific App Engine features:
  final pulumi.Input<ApplicationFeatureSettings>? featureSettings;

  /// Settings for enabling Cloud Identity Aware Proxy
  final pulumi.Input<ApplicationIap>? iap;

  /// The [location](https://cloud.google.com/appengine/docs/locations)
  /// to serve the app from.
  final pulumi.Input<String> locationId;

  /// The project ID to create the application under.
  /// ~>**NOTE:** GCP only accepts project ID, not project number. If you are using number,
  /// you may get a "Permission denied" error.
  final pulumi.Input<String>? project;

  /// The serving status of the app.
  final pulumi.Input<String>? servingStatus;

  /// A list of the SSL policy that will be applied. Each block has a `SSL_POLICY_UNSPECIFIED`, `DEFAULT`, and `MODERN` field.
  final pulumi.Input<String>? sslPolicy;

  ApplicationArgs({
    this.authDomain,
    this.databaseType,
    this.featureSettings,
    this.iap,
    required this.locationId,
    this.project,
    this.servingStatus,
    this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authDomainValue = authDomain;
    if (authDomainValue != null) {
      map['authDomain'] = authDomainValue;
    }
    final databaseTypeValue = databaseType;
    if (databaseTypeValue != null) {
      map['databaseType'] = databaseTypeValue;
    }
    final featureSettingsValue = featureSettings;
    if (featureSettingsValue != null) {
      map['featureSettings'] = pulumi.Input.mapOptionalInputValue<
          ApplicationFeatureSettings,
          Map<String, dynamic>>(featureSettingsValue, (value) => value.toMap());
    }
    final iapValue = iap;
    if (iapValue != null) {
      map['iap'] = pulumi.Input.mapOptionalInputValue<ApplicationIap,
          Map<String, dynamic>>(iapValue, (value) => value.toMap());
    }
    map['locationId'] = locationId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final servingStatusValue = servingStatus;
    if (servingStatusValue != null) {
      map['servingStatus'] = servingStatusValue;
    }
    final sslPolicyValue = sslPolicy;
    if (sslPolicyValue != null) {
      map['sslPolicy'] = sslPolicyValue;
    }
    return map;
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      authDomain: pulumi.Input.asOptionalInput<String>(map['authDomain']),
      databaseType: pulumi.Input.asOptionalInput<String>(map['databaseType']),
      featureSettings: pulumi.Input.asOptionalInput<ApplicationFeatureSettings>(
          map['featureSettings']),
      iap: pulumi.Input.asOptionalInput<ApplicationIap>(map['iap']),
      locationId: pulumi.Input.asInput<String>(map['locationId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      servingStatus: pulumi.Input.asOptionalInput<String>(map['servingStatus']),
      sslPolicy: pulumi.Input.asOptionalInput<String>(map['sslPolicy']),
    );
  }
}
