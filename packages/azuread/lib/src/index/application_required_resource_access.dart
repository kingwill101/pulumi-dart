// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_required_resource_access_resource_access.dart';

class ApplicationRequiredResourceAccess {
  /// A collection of `resource_access` blocks as documented below, describing OAuth2.0 permission scopes and app roles that the application requires from the specified resource.
  final List<ApplicationRequiredResourceAccessResourceAccess> resourceAccesses;
  /// The unique identifier for the resource that the application requires access to. This should be the Application ID of the target application.
  ///
  /// > **Note:** Documentation on `resource_app_id` values for Microsoft APIs can be difficult to find, but you can use the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/ad/sp?view=azure-cli-latest#az_ad_sp_list) to find them. (e.g. `az ad sp list --display-name "Microsoft Graph" --query '[].{appDisplayName:appDisplayName, appId:appId}'`)
  final String resourceAppId;

  /// Creates a new [ApplicationRequiredResourceAccess].
  /// [resourceAccesses] A collection of `resource_access` blocks as documented below, describing OAuth2.0 permission scopes and app roles that the application requires from the specified resource.
  /// [resourceAppId] The unique identifier for the resource that the application requires access to. This should be the Application ID of the target application.
  ApplicationRequiredResourceAccess({
    required this.resourceAccesses,
    required this.resourceAppId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceAccesses': pulumi.Input.encodeList<ApplicationRequiredResourceAccessResourceAccess, Map<String, dynamic>>(resourceAccesses, (value) => value.toMap()),
      'resourceAppId': resourceAppId,
    };
  }

  factory ApplicationRequiredResourceAccess.fromMap(Map<String, dynamic> map) {
    return ApplicationRequiredResourceAccess(
      resourceAccesses: pulumi.Input.decodeList<ApplicationRequiredResourceAccessResourceAccess>(map['resourceAccesses'], (value) => ApplicationRequiredResourceAccessResourceAccess.fromMap((value as Map).cast<String, dynamic>())),
      resourceAppId: map['resourceAppId'] as String,
    );
  }
}

