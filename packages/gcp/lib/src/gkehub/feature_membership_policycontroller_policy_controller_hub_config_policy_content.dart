// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_policycontroller_policy_controller_hub_config_policy_content_bundle.dart';
import 'feature_membership_policycontroller_policy_controller_hub_config_policy_content_template_library.dart';

class FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent {
  /// map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  final List<FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>? bundles;
  /// Configures the installation of the Template Library. Structure is documented below.
  final FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary? templateLibrary;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent].
  /// [bundles] map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  /// [templateLibrary] Configures the installation of the Template Library. Structure is documented below.
  FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent({
    this.bundles,
    this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundles': ?bundles == null ? null : pulumi.Input.encodeList<FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle, Map<String, dynamic>>(bundles!, (value) => value.toMap()),
      'templateLibrary': ?templateLibrary == null ? null : templateLibrary!.toMap(),
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent(
      bundles: map['bundles'] == null ? null : pulumi.Input.decodeList<FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>(map['bundles'], (value) => FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap((value as Map).cast<String, dynamic>())),
      templateLibrary: map['templateLibrary'] == null ? null : FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary.fromMap((map['templateLibrary'] as Map).cast<String, dynamic>()),
    );
  }
}

