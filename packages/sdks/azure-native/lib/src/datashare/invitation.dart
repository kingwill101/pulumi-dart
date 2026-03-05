import 'package:pulumi/pulumi.dart' as pulumi;
import 'invitation_args.dart';
import 'system_data_response.dart';

/// A Invitation data transfer object.
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Invitations_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var invitation = new AzureNative.DataShare.Invitation("invitation", new()
///     {
///         AccountName = "Account1",
///         ExpirationDate = "2020-08-26T22:33:24.5785265Z",
///         InvitationName = "Invitation1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
///         TargetEmail = "receiver@microsoft.com",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewInvitation(ctx, "invitation", &datashare.InvitationArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			ExpirationDate:    pulumi.String("2020-08-26T22:33:24.5785265Z"),
/// 			InvitationName:    pulumi.String("Invitation1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
/// 			TargetEmail:       pulumi.String("receiver@microsoft.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datashare.Invitation;
/// import com.pulumi.azurenative.datashare.InvitationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var invitation = new Invitation("invitation", InvitationArgs.builder()
///             .accountName("Account1")
///             .expirationDate("2020-08-26T22:33:24.5785265Z")
///             .invitationName("Invitation1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
///             .targetEmail("receiver@microsoft.com")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const invitation = new azure_native.datashare.Invitation("invitation", {
///     accountName: "Account1",
///     expirationDate: "2020-08-26T22:33:24.5785265Z",
///     invitationName: "Invitation1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
///     targetEmail: "receiver@microsoft.com",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// invitation = azure_native.datashare.Invitation("invitation",
///     account_name="Account1",
///     expiration_date="2020-08-26T22:33:24.5785265Z",
///     invitation_name="Invitation1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1",
///     target_email="receiver@microsoft.com")
///
/// ```
///
/// ```yaml
/// resources:
///   invitation:
///     type: azure-native:datashare:Invitation
///     properties:
///       accountName: Account1
///       expirationDate: 2020-08-26T22:33:24.5785265Z
///       invitationName: Invitation1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///       targetEmail: receiver@microsoft.com
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:datashare:Invitation Invitation1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shares/{shareName}/invitations/{invitationName}
/// ```
class Invitation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The expiration date for the invitation and share subscription.
  late final pulumi.Output<String?> expirationDate;

  /// unique invitation id
  late final pulumi.Output<String> invitationId;

  /// The status of the invitation.
  late final pulumi.Output<String> invitationStatus;

  /// Name of the azure resource
  late final pulumi.Output<String> name;

  /// The time the recipient responded to the invitation.
  late final pulumi.Output<String> respondedAt;

  /// Gets the time at which the invitation was sent.
  late final pulumi.Output<String> sentAt;

  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The target Azure AD Id. Can't be combined with email.
  late final pulumi.Output<String?> targetActiveDirectoryId;

  /// The email the invitation is directed to.
  late final pulumi.Output<String?> targetEmail;

  /// The target user or application Id that invitation is being sent to.
  /// Must be specified along TargetActiveDirectoryId. This enables sending
  /// invitations to specific users or applications in an AD tenant.
  late final pulumi.Output<String?> targetObjectId;

  /// Type of the azure resource
  late final pulumi.Output<String> type;

  /// Email of the user who created the resource
  late final pulumi.Output<String> userEmail;

  /// Name of the user who created the resource
  late final pulumi.Output<String> userName;

  /// Creates a new [Invitation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Invitation]. {@macro pulumi_datashare_invitation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Invitation(
    String name, {
    InvitationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:datashare:Invitation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    expirationDate = registerOutput<String?>('expirationDate');
    invitationId = registerOutput<String>('invitationId');
    invitationStatus = registerOutput<String>('invitationStatus');
    this.name = registerOutput<String>('name');
    respondedAt = registerOutput<String>('respondedAt');
    sentAt = registerOutput<String>('sentAt');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    targetActiveDirectoryId = registerOutput<String?>(
      'targetActiveDirectoryId',
    );
    targetEmail = registerOutput<String?>('targetEmail');
    targetObjectId = registerOutput<String?>('targetObjectId');
    type = registerOutput<String>('type');
    userEmail = registerOutput<String>('userEmail');
    userName = registerOutput<String>('userName');
  }
}
