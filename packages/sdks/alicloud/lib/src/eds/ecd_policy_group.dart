import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecd_policy_group_args.dart';
import 'ecd_policy_group_authorize_access_policy_rule.dart';
import 'ecd_policy_group_authorize_security_policy_rule.dart';
import 'ecd_policy_group_state.dart';

/// Provides a Elastic Desktop Service (ECD) Policy Group resource.
///
/// For information about Elastic Desktop Service (ECD) Policy Group and how to use it, see [What is Policy Group](https://www.alibabacloud.com/help/en/wuying-workspace/developer-reference/api-ecd-2020-09-30-createpolicygroup).
///
/// > **NOTE:** Available since v1.130.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.eds.EcdPolicyGroup("default", {
///     policyGroupName: "terraform-example",
///     clipboard: "read",
///     localDrive: "read",
///     usbRedirect: "off",
///     watermark: "off",
///     authorizeAccessPolicyRules: [{
///         description: "terraform-example",
///         cidrIp: "1.2.3.45/24",
///     }],
///     authorizeSecurityPolicyRules: [{
///         type: "inflow",
///         policy: "accept",
///         description: "terraform-example",
///         portRange: "80/80",
///         ipProtocol: "TCP",
///         priority: "1",
///         cidrIp: "1.2.3.4/24",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eds.EcdPolicyGroup("default",
///     policy_group_name="terraform-example",
///     clipboard="read",
///     local_drive="read",
///     usb_redirect="off",
///     watermark="off",
///     authorize_access_policy_rules=[{
///         "description": "terraform-example",
///         "cidr_ip": "1.2.3.45/24",
///     }],
///     authorize_security_policy_rules=[{
///         "type": "inflow",
///         "policy": "accept",
///         "description": "terraform-example",
///         "port_range": "80/80",
///         "ip_protocol": "TCP",
///         "priority": "1",
///         "cidr_ip": "1.2.3.4/24",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Eds.EcdPolicyGroup("default", new()
///     {
///         PolicyGroupName = "terraform-example",
///         Clipboard = "read",
///         LocalDrive = "read",
///         UsbRedirect = "off",
///         Watermark = "off",
///         AuthorizeAccessPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs
///             {
///                 Description = "terraform-example",
///                 CidrIp = "1.2.3.45/24",
///             },
///         },
///         AuthorizeSecurityPolicyRules = new[]
///         {
///             new AliCloud.Eds.Inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs
///             {
///                 Type = "inflow",
///                 Policy = "accept",
///                 Description = "terraform-example",
///                 PortRange = "80/80",
///                 IpProtocol = "TCP",
///                 Priority = "1",
///                 CidrIp = "1.2.3.4/24",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eds.NewEcdPolicyGroup(ctx, "default", &eds.EcdPolicyGroupArgs{
/// 			PolicyGroupName: pulumi.String("terraform-example"),
/// 			Clipboard:       pulumi.String("read"),
/// 			LocalDrive:      pulumi.String("read"),
/// 			UsbRedirect:     pulumi.String("off"),
/// 			Watermark:       pulumi.String("off"),
/// 			AuthorizeAccessPolicyRules: eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs{
/// 					Description: pulumi.String("terraform-example"),
/// 					CidrIp:      pulumi.String("1.2.3.45/24"),
/// 				},
/// 			},
/// 			AuthorizeSecurityPolicyRules: eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArray{
/// 				&eds.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs{
/// 					Type:        pulumi.String("inflow"),
/// 					Policy:      pulumi.String("accept"),
/// 					Description: pulumi.String("terraform-example"),
/// 					PortRange:   pulumi.String("80/80"),
/// 					IpProtocol:  pulumi.String("TCP"),
/// 					Priority:    pulumi.String("1"),
/// 					CidrIp:      pulumi.String("1.2.3.4/24"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.eds.EcdPolicyGroup;
/// import com.pulumi.alicloud.eds.EcdPolicyGroupArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeAccessPolicyRuleArgs;
/// import com.pulumi.alicloud.eds.inputs.EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs;
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
///         var default_ = new EcdPolicyGroup("default", EcdPolicyGroupArgs.builder()
///             .policyGroupName("terraform-example")
///             .clipboard("read")
///             .localDrive("read")
///             .usbRedirect("off")
///             .watermark("off")
///             .authorizeAccessPolicyRules(EcdPolicyGroupAuthorizeAccessPolicyRuleArgs.builder()
///                 .description("terraform-example")
///                 .cidrIp("1.2.3.45/24")
///                 .build())
///             .authorizeSecurityPolicyRules(EcdPolicyGroupAuthorizeSecurityPolicyRuleArgs.builder()
///                 .type("inflow")
///                 .policy("accept")
///                 .description("terraform-example")
///                 .portRange("80/80")
///                 .ipProtocol("TCP")
///                 .priority("1")
///                 .cidrIp("1.2.3.4/24")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:eds:EcdPolicyGroup
///     properties:
///       policyGroupName: terraform-example
///       clipboard: read
///       localDrive: read
///       usbRedirect: off
///       watermark: off
///       authorizeAccessPolicyRules:
///         - description: terraform-example
///           cidrIp: 1.2.3.45/24
///       authorizeSecurityPolicyRules:
///         - type: inflow
///           policy: accept
///           description: terraform-example
///           portRange: 80/80
///           ipProtocol: TCP
///           priority: '1'
///           cidrIp: 1.2.3.4/24
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Elastic Desktop Service (ECD) Policy Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/ecdPolicyGroup:EcdPolicyGroup example <id>
/// ```
class EcdPolicyGroup extends pulumi.CustomResource {
  /// The rule of authorize access rule. See `authorize_access_policy_rules` below.
  late final pulumi.Output<List<EcdPolicyGroupAuthorizeAccessPolicyRule>?> authorizeAccessPolicyRules;
  /// The policy rule. See `authorize_security_policy_rules` below.
  late final pulumi.Output<List<EcdPolicyGroupAuthorizeSecurityPolicyRule>?> authorizeSecurityPolicyRules;
  /// Whether to enable local camera redirection. Valid values: `on`, `off`.
  late final pulumi.Output<String> cameraRedirect;
  /// The clipboard policy. Valid values: `off`, `read`, `readwrite`.
  late final pulumi.Output<String> clipboard;
  /// The list of domain.
  late final pulumi.Output<String?> domainList;
  /// The access of html5. Valid values: `off`, `on`.
  late final pulumi.Output<String> htmlAccess;
  /// The html5 file transfer. Valid values: `all`, `download`, `off`, `upload`.
  late final pulumi.Output<String> htmlFileTransfer;
  /// Local drive redirect policy. Valid values: ` readwrite`, `off`, `read`.
  late final pulumi.Output<String> localDrive;
  /// The name of policy group.
  late final pulumi.Output<String?> policyGroupName;
  /// Whether to enable screen recording. Valid values: `off`, `all-time`, `period`.
  late final pulumi.Output<String> recording;
  /// The end time of recording, value: `HH:MM:SS`. This return value is meaningful only when the value of `recording` is `period`.
  late final pulumi.Output<String?> recordingEndTime;
  /// The screen recording video retention. Valid values between 30 and 180. This return value is meaningful only when the value of `recording` is `period` or `all-time`.
  late final pulumi.Output<int> recordingExpires;
  /// The fps of recording. Valid values: `2`, `5`, `10`, `15`.
  late final pulumi.Output<int> recordingFps;
  /// The start time of recording, value: `HH:MM:SS`. This return value is meaningful only when the value of `recording` is `period`.
  late final pulumi.Output<String?> recordingStartTime;
  /// The status of policy.
  late final pulumi.Output<String> status;
  /// The usb redirect policy. Valid values: `off`, `on`.
  late final pulumi.Output<String> usbRedirect;
  /// The quality of visual. Valid values: `high`, `lossless`, `low`, `medium`.
  late final pulumi.Output<String> visualQuality;
  /// The watermark policy. Valid values: `off`, `on`.
  late final pulumi.Output<String> watermark;
  /// The watermark transparency. Valid values: `DARK`, `LIGHT`, `MIDDLE`.
  late final pulumi.Output<String> watermarkTransparency;
  /// The type of watemark. Valid values: `EndUserId`, `HostName`.
  late final pulumi.Output<String> watermarkType;

  /// Creates a new [EcdPolicyGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcdPolicyGroup]. {@macro pulumi_eds_ecd_policy_group_ecd_policy_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcdPolicyGroup(
    String name, {
    EcdPolicyGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/ecdPolicyGroup:EcdPolicyGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizeAccessPolicyRules = registerOutput<List<EcdPolicyGroupAuthorizeAccessPolicyRule>?>('authorizeAccessPolicyRules');
    this.authorizeSecurityPolicyRules = registerOutput<List<EcdPolicyGroupAuthorizeSecurityPolicyRule>?>('authorizeSecurityPolicyRules');
    this.cameraRedirect = registerOutput<String>('cameraRedirect');
    this.clipboard = registerOutput<String>('clipboard');
    this.domainList = registerOutput<String?>('domainList');
    this.htmlAccess = registerOutput<String>('htmlAccess');
    this.htmlFileTransfer = registerOutput<String>('htmlFileTransfer');
    this.localDrive = registerOutput<String>('localDrive');
    this.policyGroupName = registerOutput<String?>('policyGroupName');
    this.recording = registerOutput<String>('recording');
    this.recordingEndTime = registerOutput<String?>('recordingEndTime');
    this.recordingExpires = registerOutput<int>('recordingExpires');
    this.recordingFps = registerOutput<int>('recordingFps');
    this.recordingStartTime = registerOutput<String?>('recordingStartTime');
    this.status = registerOutput<String>('status');
    this.usbRedirect = registerOutput<String>('usbRedirect');
    this.visualQuality = registerOutput<String>('visualQuality');
    this.watermark = registerOutput<String>('watermark');
    this.watermarkTransparency = registerOutput<String>('watermarkTransparency');
    this.watermarkType = registerOutput<String>('watermarkType');
  }

  /// Gets an existing [EcdPolicyGroup] resource's state with the given [name] and [id].
  static EcdPolicyGroup get(
    String name,
    pulumi.Input<String> id, {
    EcdPolicyGroupState? state,
  }) {
    return EcdPolicyGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcdPolicyGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/ecdPolicyGroup:EcdPolicyGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizeAccessPolicyRules = registerOutput<List<EcdPolicyGroupAuthorizeAccessPolicyRule>?>('authorizeAccessPolicyRules');
    this.authorizeSecurityPolicyRules = registerOutput<List<EcdPolicyGroupAuthorizeSecurityPolicyRule>?>('authorizeSecurityPolicyRules');
    this.cameraRedirect = registerOutput<String>('cameraRedirect');
    this.clipboard = registerOutput<String>('clipboard');
    this.domainList = registerOutput<String?>('domainList');
    this.htmlAccess = registerOutput<String>('htmlAccess');
    this.htmlFileTransfer = registerOutput<String>('htmlFileTransfer');
    this.localDrive = registerOutput<String>('localDrive');
    this.policyGroupName = registerOutput<String?>('policyGroupName');
    this.recording = registerOutput<String>('recording');
    this.recordingEndTime = registerOutput<String?>('recordingEndTime');
    this.recordingExpires = registerOutput<int>('recordingExpires');
    this.recordingFps = registerOutput<int>('recordingFps');
    this.recordingStartTime = registerOutput<String?>('recordingStartTime');
    this.status = registerOutput<String>('status');
    this.usbRedirect = registerOutput<String>('usbRedirect');
    this.visualQuality = registerOutput<String>('visualQuality');
    this.watermark = registerOutput<String>('watermark');
    this.watermarkTransparency = registerOutput<String>('watermarkTransparency');
    this.watermarkType = registerOutput<String>('watermarkType');
  }
}
