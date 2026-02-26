// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_bundle/feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_bundle.dart';
import '../feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_template_library/feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_template_library.dart';

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent {
  /// Configures which bundles to install and their corresponding install specs.
  /// Structure is documented below.
  final List<
          FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>?
      bundles;

  /// Configures the installation of the Template Library.
  /// Structure is documented below.
  final FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary?
      templateLibrary;

  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent({
    this.bundles,
    this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bundlesValue = bundles;
    if (bundlesValue != null) {
      map['bundles'] = Input.encodeList<
          FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle,
          Map<String, dynamic>>(bundlesValue, (value) => value.toMap());
    }
    final templateLibraryValue = templateLibrary;
    if (templateLibraryValue != null) {
      map['templateLibrary'] = templateLibraryValue.toMap();
    }
    return map;
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent.fromMap(
      Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent(
      bundles: map['bundles'] == null
          ? null
          : Input.decodeList<
                  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>(
              map['bundles'],
              (value) =>
                  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle
                      .fromMap((value as Map).cast<String, dynamic>())),
      templateLibrary: map['templateLibrary'] == null
          ? null
          : FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary
              .fromMap((map['templateLibrary'] as Map).cast<String, dynamic>()),
    );
  }
}
