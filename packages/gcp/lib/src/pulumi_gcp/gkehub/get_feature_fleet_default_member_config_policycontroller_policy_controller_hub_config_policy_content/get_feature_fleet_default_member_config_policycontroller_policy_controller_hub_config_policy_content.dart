// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_bundle/get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_bundle.dart';
import '../get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_template_library/get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_template_library.dart';

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent {
  /// Configures which bundles to install and their corresponding install specs.
  final List<
          GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>
      bundles;

  /// Configures the installation of the Template Library.
  final List<
          GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary>
      templateLibraries;

  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent({
    required this.bundles,
    required this.templateLibraries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundles'] = pulumi.Input.encodeList<
        GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle,
        Map<String, dynamic>>(bundles, (value) => value.toMap());
    map['templateLibraries'] = pulumi.Input.encodeList<
        GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary,
        Map<String, dynamic>>(templateLibraries, (value) => value.toMap());
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent(
      bundles: pulumi.Input.decodeList<
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>(
          map['bundles'],
          (value) =>
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle
                  .fromMap((value as Map).cast<String, dynamic>())),
      templateLibraries: pulumi.Input.decodeList<
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary>(
          map['templateLibraries'],
          (value) =>
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
