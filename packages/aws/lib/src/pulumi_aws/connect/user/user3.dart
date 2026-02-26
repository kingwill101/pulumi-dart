import 'package:pulumi/pulumi.dart';
import '../user_identity_info/user_identity_info.dart';
import '../user_phone_config/user_phone_config.dart';
import 'user_args3.dart';

/// Provides an Amazon Connect User resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.User("example", {
/// instanceId: exampleAwsConnectInstance.id,
/// name: "example",
/// password: "Password123",
/// routingProfileId: exampleAwsConnectRoutingProfile.routingProfileId,
/// securityProfileIds: [exampleAwsConnectSecurityProfile.securityProfileId],
/// identityInfo: {
/// firstName: "example",
/// lastName: "example2",
/// },
/// phoneConfig: {
/// afterContactWorkTimeLimit: 0,
/// phoneType: "SOFT_PHONE",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.User("example",
/// instance_id=example_aws_connect_instance["id"],
/// name="example",
/// password="Password123",
/// routing_profile_id=example_aws_connect_routing_profile["routingProfileId"],
/// security_profile_ids=[example_aws_connect_security_profile["securityProfileId"]],
/// identity_info={
/// "first_name": "example",
/// "last_name": "example2",
/// },
/// phone_config={
/// "after_contact_work_time_limit": 0,
/// "phone_type": "SOFT_PHONE",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.User("example", new()
/// {
/// InstanceId = exampleAwsConnectInstance.Id,
/// Name = "example",
/// Password = "Password123",
/// RoutingProfileId = exampleAwsConnectRoutingProfile.RoutingProfileId,
/// SecurityProfileIds = new[]
/// {
/// exampleAwsConnectSecurityProfile.SecurityProfileId,
/// },
/// IdentityInfo = new Aws.Connect.Inputs.UserIdentityInfoArgs
/// {
/// FirstName = "example",
/// LastName = "example2",
/// },
/// PhoneConfig = new Aws.Connect.Inputs.UserPhoneConfigArgs
/// {
/// AfterContactWorkTimeLimit = 0,
/// PhoneType = "SOFT_PHONE",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewUser(ctx, "example", &connect.UserArgs{
/// InstanceId:       pulumi.Any(exampleAwsConnectInstance.Id),
/// Name:             pulumi.String("example"),
/// Password:         pulumi.String("Password123"),
/// RoutingProfileId: pulumi.Any(exampleAwsConnectRoutingProfile.RoutingProfileId),
/// SecurityProfileIds: pulumi.StringArray{
/// exampleAwsConnectSecurityProfile.SecurityProfileId,
/// },
/// IdentityInfo: &connect.UserIdentityInfoArgs{
/// FirstName: pulumi.String("example"),
/// LastName:  pulumi.String("example2"),
/// },
/// PhoneConfig: &connect.UserPhoneConfigArgs{
/// AfterContactWorkTimeLimit: pulumi.Int(0),
/// PhoneType:                 pulumi.String("SOFT_PHONE"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.User;
/// import com.pulumi.aws.connect.UserArgs;
/// import com.pulumi.aws.connect.inputs.UserIdentityInfoArgs;
/// import com.pulumi.aws.connect.inputs.UserPhoneConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new User("example", UserArgs.builder()
/// .instanceId(exampleAwsConnectInstance.id())
/// .name("example")
/// .password("Password123")
/// .routingProfileId(exampleAwsConnectRoutingProfile.routingProfileId())
/// .securityProfileIds(exampleAwsConnectSecurityProfile.securityProfileId())
/// .identityInfo(UserIdentityInfoArgs.builder()
/// .firstName("example")
/// .lastName("example2")
/// .build())
/// .phoneConfig(UserPhoneConfigArgs.builder()
/// .afterContactWorkTimeLimit(0)
/// .phoneType("SOFT_PHONE")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:User
/// properties:
/// instanceId: ${exampleAwsConnectInstance.id}
/// name: example
/// password: Password123
/// routingProfileId: ${exampleAwsConnectRoutingProfile.routingProfileId}
/// securityProfileIds:
/// - ${exampleAwsConnectSecurityProfile.securityProfileId}
/// identityInfo:
/// firstName: example
/// lastName: example2
/// phoneConfig:
/// afterContactWorkTimeLimit: 0
/// phoneType: SOFT_PHONE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With<span pulumi-lang-nodejs=" hierarchyGroupId
/// " pulumi-lang-dotnet=" HierarchyGroupId
/// " pulumi-lang-go=" hierarchyGroupId
/// " pulumi-lang-python=" hierarchy_group_id
/// " pulumi-lang-yaml=" hierarchyGroupId
/// " pulumi-lang-java=" hierarchyGroupId
/// "> hierarchy_group_id
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.User("example", {
/// instanceId: exampleAwsConnectInstance.id,
/// name: "example",
/// password: "Password123",
/// routingProfileId: exampleAwsConnectRoutingProfile.routingProfileId,
/// hierarchyGroupId: exampleAwsConnectUserHierarchyGroup.hierarchyGroupId,
/// securityProfileIds: [exampleAwsConnectSecurityProfile.securityProfileId],
/// identityInfo: {
/// firstName: "example",
/// lastName: "example2",
/// },
/// phoneConfig: {
/// afterContactWorkTimeLimit: 0,
/// phoneType: "SOFT_PHONE",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.User("example",
/// instance_id=example_aws_connect_instance["id"],
/// name="example",
/// password="Password123",
/// routing_profile_id=example_aws_connect_routing_profile["routingProfileId"],
/// hierarchy_group_id=example_aws_connect_user_hierarchy_group["hierarchyGroupId"],
/// security_profile_ids=[example_aws_connect_security_profile["securityProfileId"]],
/// identity_info={
/// "first_name": "example",
/// "last_name": "example2",
/// },
/// phone_config={
/// "after_contact_work_time_limit": 0,
/// "phone_type": "SOFT_PHONE",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.User("example", new()
/// {
/// InstanceId = exampleAwsConnectInstance.Id,
/// Name = "example",
/// Password = "Password123",
/// RoutingProfileId = exampleAwsConnectRoutingProfile.RoutingProfileId,
/// HierarchyGroupId = exampleAwsConnectUserHierarchyGroup.HierarchyGroupId,
/// SecurityProfileIds = new[]
/// {
/// exampleAwsConnectSecurityProfile.SecurityProfileId,
/// },
/// IdentityInfo = new Aws.Connect.Inputs.UserIdentityInfoArgs
/// {
/// FirstName = "example",
/// LastName = "example2",
/// },
/// PhoneConfig = new Aws.Connect.Inputs.UserPhoneConfigArgs
/// {
/// AfterContactWorkTimeLimit = 0,
/// PhoneType = "SOFT_PHONE",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewUser(ctx, "example", &connect.UserArgs{
/// InstanceId:       pulumi.Any(exampleAwsConnectInstance.Id),
/// Name:             pulumi.String("example"),
/// Password:         pulumi.String("Password123"),
/// RoutingProfileId: pulumi.Any(exampleAwsConnectRoutingProfile.RoutingProfileId),
/// HierarchyGroupId: pulumi.Any(exampleAwsConnectUserHierarchyGroup.HierarchyGroupId),
/// SecurityProfileIds: pulumi.StringArray{
/// exampleAwsConnectSecurityProfile.SecurityProfileId,
/// },
/// IdentityInfo: &connect.UserIdentityInfoArgs{
/// FirstName: pulumi.String("example"),
/// LastName:  pulumi.String("example2"),
/// },
/// PhoneConfig: &connect.UserPhoneConfigArgs{
/// AfterContactWorkTimeLimit: pulumi.Int(0),
/// PhoneType:                 pulumi.String("SOFT_PHONE"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.User;
/// import com.pulumi.aws.connect.UserArgs;
/// import com.pulumi.aws.connect.inputs.UserIdentityInfoArgs;
/// import com.pulumi.aws.connect.inputs.UserPhoneConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new User("example", UserArgs.builder()
/// .instanceId(exampleAwsConnectInstance.id())
/// .name("example")
/// .password("Password123")
/// .routingProfileId(exampleAwsConnectRoutingProfile.routingProfileId())
/// .hierarchyGroupId(exampleAwsConnectUserHierarchyGroup.hierarchyGroupId())
/// .securityProfileIds(exampleAwsConnectSecurityProfile.securityProfileId())
/// .identityInfo(UserIdentityInfoArgs.builder()
/// .firstName("example")
/// .lastName("example2")
/// .build())
/// .phoneConfig(UserPhoneConfigArgs.builder()
/// .afterContactWorkTimeLimit(0)
/// .phoneType("SOFT_PHONE")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:User
/// properties:
/// instanceId: ${exampleAwsConnectInstance.id}
/// name: example
/// password: Password123
/// routingProfileId: ${exampleAwsConnectRoutingProfile.routingProfileId}
/// hierarchyGroupId: ${exampleAwsConnectUserHierarchyGroup.hierarchyGroupId}
/// securityProfileIds:
/// - ${exampleAwsConnectSecurityProfile.securityProfileId}
/// identityInfo:
/// firstName: example
/// lastName: example2
/// phoneConfig:
/// afterContactWorkTimeLimit: 0
/// phoneType: SOFT_PHONE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With<span pulumi-lang-nodejs=" identityInfo " pulumi-lang-dotnet=" IdentityInfo " pulumi-lang-go=" identityInfo " pulumi-lang-python=" identity_info " pulumi-lang-yaml=" identityInfo " pulumi-lang-java=" identityInfo "> identity_info </span>filled
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.User("example", {
/// instanceId: exampleAwsConnectInstance.id,
/// name: "example",
/// password: "Password123",
/// routingProfileId: exampleAwsConnectRoutingProfile.routingProfileId,
/// securityProfileIds: [exampleAwsConnectSecurityProfile.securityProfileId],
/// identityInfo: {
/// email: "example@example.com",
/// firstName: "example",
/// lastName: "example2",
/// secondaryEmail: "secondary@example.com",
/// },
/// phoneConfig: {
/// afterContactWorkTimeLimit: 0,
/// phoneType: "SOFT_PHONE",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.User("example",
/// instance_id=example_aws_connect_instance["id"],
/// name="example",
/// password="Password123",
/// routing_profile_id=example_aws_connect_routing_profile["routingProfileId"],
/// security_profile_ids=[example_aws_connect_security_profile["securityProfileId"]],
/// identity_info={
/// "email": "example@example.com",
/// "first_name": "example",
/// "last_name": "example2",
/// "secondary_email": "secondary@example.com",
/// },
/// phone_config={
/// "after_contact_work_time_limit": 0,
/// "phone_type": "SOFT_PHONE",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.User("example", new()
/// {
/// InstanceId = exampleAwsConnectInstance.Id,
/// Name = "example",
/// Password = "Password123",
/// RoutingProfileId = exampleAwsConnectRoutingProfile.RoutingProfileId,
/// SecurityProfileIds = new[]
/// {
/// exampleAwsConnectSecurityProfile.SecurityProfileId,
/// },
/// IdentityInfo = new Aws.Connect.Inputs.UserIdentityInfoArgs
/// {
/// Email = "example@example.com",
/// FirstName = "example",
/// LastName = "example2",
/// SecondaryEmail = "secondary@example.com",
/// },
/// PhoneConfig = new Aws.Connect.Inputs.UserPhoneConfigArgs
/// {
/// AfterContactWorkTimeLimit = 0,
/// PhoneType = "SOFT_PHONE",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewUser(ctx, "example", &connect.UserArgs{
/// InstanceId:       pulumi.Any(exampleAwsConnectInstance.Id),
/// Name:             pulumi.String("example"),
/// Password:         pulumi.String("Password123"),
/// RoutingProfileId: pulumi.Any(exampleAwsConnectRoutingProfile.RoutingProfileId),
/// SecurityProfileIds: pulumi.StringArray{
/// exampleAwsConnectSecurityProfile.SecurityProfileId,
/// },
/// IdentityInfo: &connect.UserIdentityInfoArgs{
/// Email:          pulumi.String("example@example.com"),
/// FirstName:      pulumi.String("example"),
/// LastName:       pulumi.String("example2"),
/// SecondaryEmail: pulumi.String("secondary@example.com"),
/// },
/// PhoneConfig: &connect.UserPhoneConfigArgs{
/// AfterContactWorkTimeLimit: pulumi.Int(0),
/// PhoneType:                 pulumi.String("SOFT_PHONE"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.User;
/// import com.pulumi.aws.connect.UserArgs;
/// import com.pulumi.aws.connect.inputs.UserIdentityInfoArgs;
/// import com.pulumi.aws.connect.inputs.UserPhoneConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new User("example", UserArgs.builder()
/// .instanceId(exampleAwsConnectInstance.id())
/// .name("example")
/// .password("Password123")
/// .routingProfileId(exampleAwsConnectRoutingProfile.routingProfileId())
/// .securityProfileIds(exampleAwsConnectSecurityProfile.securityProfileId())
/// .identityInfo(UserIdentityInfoArgs.builder()
/// .email("example@example.com")
/// .firstName("example")
/// .lastName("example2")
/// .secondaryEmail("secondary@example.com")
/// .build())
/// .phoneConfig(UserPhoneConfigArgs.builder()
/// .afterContactWorkTimeLimit(0)
/// .phoneType("SOFT_PHONE")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:User
/// properties:
/// instanceId: ${exampleAwsConnectInstance.id}
/// name: example
/// password: Password123
/// routingProfileId: ${exampleAwsConnectRoutingProfile.routingProfileId}
/// securityProfileIds:
/// - ${exampleAwsConnectSecurityProfile.securityProfileId}
/// identityInfo:
/// email: example@example.com
/// firstName: example
/// lastName: example2
/// secondaryEmail: secondary@example.com
/// phoneConfig:
/// afterContactWorkTimeLimit: 0
/// phoneType: SOFT_PHONE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With<span pulumi-lang-nodejs=" phoneConfig " pulumi-lang-dotnet=" PhoneConfig " pulumi-lang-go=" phoneConfig " pulumi-lang-python=" phone_config " pulumi-lang-yaml=" phoneConfig " pulumi-lang-java=" phoneConfig "> phone_config </span>phone type as desk phone
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.User("example", {
/// instanceId: exampleAwsConnectInstance.id,
/// name: "example",
/// password: "Password123",
/// routingProfileId: exampleAwsConnectRoutingProfile.routingProfileId,
/// securityProfileIds: [exampleAwsConnectSecurityProfile.securityProfileId],
/// phoneConfig: {
/// afterContactWorkTimeLimit: 0,
/// phoneType: "SOFT_PHONE",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.User("example",
/// instance_id=example_aws_connect_instance["id"],
/// name="example",
/// password="Password123",
/// routing_profile_id=example_aws_connect_routing_profile["routingProfileId"],
/// security_profile_ids=[example_aws_connect_security_profile["securityProfileId"]],
/// phone_config={
/// "after_contact_work_time_limit": 0,
/// "phone_type": "SOFT_PHONE",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.User("example", new()
/// {
/// InstanceId = exampleAwsConnectInstance.Id,
/// Name = "example",
/// Password = "Password123",
/// RoutingProfileId = exampleAwsConnectRoutingProfile.RoutingProfileId,
/// SecurityProfileIds = new[]
/// {
/// exampleAwsConnectSecurityProfile.SecurityProfileId,
/// },
/// PhoneConfig = new Aws.Connect.Inputs.UserPhoneConfigArgs
/// {
/// AfterContactWorkTimeLimit = 0,
/// PhoneType = "SOFT_PHONE",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewUser(ctx, "example", &connect.UserArgs{
/// InstanceId:       pulumi.Any(exampleAwsConnectInstance.Id),
/// Name:             pulumi.String("example"),
/// Password:         pulumi.String("Password123"),
/// RoutingProfileId: pulumi.Any(exampleAwsConnectRoutingProfile.RoutingProfileId),
/// SecurityProfileIds: pulumi.StringArray{
/// exampleAwsConnectSecurityProfile.SecurityProfileId,
/// },
/// PhoneConfig: &connect.UserPhoneConfigArgs{
/// AfterContactWorkTimeLimit: pulumi.Int(0),
/// PhoneType:                 pulumi.String("SOFT_PHONE"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.User;
/// import com.pulumi.aws.connect.UserArgs;
/// import com.pulumi.aws.connect.inputs.UserPhoneConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new User("example", UserArgs.builder()
/// .instanceId(exampleAwsConnectInstance.id())
/// .name("example")
/// .password("Password123")
/// .routingProfileId(exampleAwsConnectRoutingProfile.routingProfileId())
/// .securityProfileIds(exampleAwsConnectSecurityProfile.securityProfileId())
/// .phoneConfig(UserPhoneConfigArgs.builder()
/// .afterContactWorkTimeLimit(0)
/// .phoneType("SOFT_PHONE")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:User
/// properties:
/// instanceId: ${exampleAwsConnectInstance.id}
/// name: example
/// password: Password123
/// routingProfileId: ${exampleAwsConnectRoutingProfile.routingProfileId}
/// securityProfileIds:
/// - ${exampleAwsConnectSecurityProfile.securityProfileId}
/// phoneConfig:
/// afterContactWorkTimeLimit: 0
/// phoneType: SOFT_PHONE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With multiple Security profile ids specified in<span pulumi-lang-nodejs=" securityProfileIds
/// " pulumi-lang-dotnet=" SecurityProfileIds
/// " pulumi-lang-go=" securityProfileIds
/// " pulumi-lang-python=" security_profile_ids
/// " pulumi-lang-yaml=" securityProfileIds
/// " pulumi-lang-java=" securityProfileIds
/// "> security_profile_ids
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.User("example", {
/// instanceId: exampleAwsConnectInstance.id,
/// name: "example",
/// password: "Password123",
/// routingProfileId: exampleAwsConnectRoutingProfile.routingProfileId,
/// securityProfileIds: [
/// exampleAwsConnectSecurityProfile.securityProfileId,
/// example2.securityProfileId,
/// ],
/// phoneConfig: {
/// afterContactWorkTimeLimit: 0,
/// autoAccept: false,
/// deskPhoneNumber: "+112345678912",
/// phoneType: "DESK_PHONE",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.User("example",
/// instance_id=example_aws_connect_instance["id"],
/// name="example",
/// password="Password123",
/// routing_profile_id=example_aws_connect_routing_profile["routingProfileId"],
/// security_profile_ids=[
/// example_aws_connect_security_profile["securityProfileId"],
/// example2["securityProfileId"],
/// ],
/// phone_config={
/// "after_contact_work_time_limit": 0,
/// "auto_accept": False,
/// "desk_phone_number": "+112345678912",
/// "phone_type": "DESK_PHONE",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Connect.User("example", new()
/// {
/// InstanceId = exampleAwsConnectInstance.Id,
/// Name = "example",
/// Password = "Password123",
/// RoutingProfileId = exampleAwsConnectRoutingProfile.RoutingProfileId,
/// SecurityProfileIds = new[]
/// {
/// exampleAwsConnectSecurityProfile.SecurityProfileId,
/// example2.SecurityProfileId,
/// },
/// PhoneConfig = new Aws.Connect.Inputs.UserPhoneConfigArgs
/// {
/// AfterContactWorkTimeLimit = 0,
/// AutoAccept = false,
/// DeskPhoneNumber = "+112345678912",
/// PhoneType = "DESK_PHONE",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.NewUser(ctx, "example", &connect.UserArgs{
/// InstanceId:       pulumi.Any(exampleAwsConnectInstance.Id),
/// Name:             pulumi.String("example"),
/// Password:         pulumi.String("Password123"),
/// RoutingProfileId: pulumi.Any(exampleAwsConnectRoutingProfile.RoutingProfileId),
/// SecurityProfileIds: pulumi.StringArray{
/// exampleAwsConnectSecurityProfile.SecurityProfileId,
/// example2.SecurityProfileId,
/// },
/// PhoneConfig: &connect.UserPhoneConfigArgs{
/// AfterContactWorkTimeLimit: pulumi.Int(0),
/// AutoAccept:                pulumi.Bool(false),
/// DeskPhoneNumber:           pulumi.String("+112345678912"),
/// PhoneType:                 pulumi.String("DESK_PHONE"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.User;
/// import com.pulumi.aws.connect.UserArgs;
/// import com.pulumi.aws.connect.inputs.UserPhoneConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new User("example", UserArgs.builder()
/// .instanceId(exampleAwsConnectInstance.id())
/// .name("example")
/// .password("Password123")
/// .routingProfileId(exampleAwsConnectRoutingProfile.routingProfileId())
/// .securityProfileIds(
/// exampleAwsConnectSecurityProfile.securityProfileId(),
/// example2.securityProfileId())
/// .phoneConfig(UserPhoneConfigArgs.builder()
/// .afterContactWorkTimeLimit(0)
/// .autoAccept(false)
/// .deskPhoneNumber("+112345678912")
/// .phoneType("DESK_PHONE")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:connect:User
/// properties:
/// instanceId: ${exampleAwsConnectInstance.id}
/// name: example
/// password: Password123
/// routingProfileId: ${exampleAwsConnectRoutingProfile.routingProfileId}
/// securityProfileIds:
/// - ${exampleAwsConnectSecurityProfile.securityProfileId}
/// - ${example2.securityProfileId}
/// phoneConfig:
/// afterContactWorkTimeLimit: 0
/// autoAccept: false
/// deskPhoneNumber: '+112345678912'
/// phoneType: DESK_PHONE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Users using the <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and <span pulumi-lang-nodejs="`userId`" pulumi-lang-dotnet="`UserId`" pulumi-lang-go="`userId`" pulumi-lang-python="`user_id`" pulumi-lang-yaml="`userId`" pulumi-lang-java="`userId`">`user_id`</span> separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/user:User example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class User3 extends CustomResource {
  /// The Amazon Resource Name (ARN) of the user.
  late final Output<String> arn;

  /// The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned.
  late final Output<String> directoryUserId;

  /// The identifier of the hierarchy group for the user.
  late final Output<String?> hierarchyGroupId;

  /// A block that contains information about the identity of the user. Documented below.
  late final Output<UserIdentityInfo?> identityInfo;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final Output<String> instanceId;

  /// The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from `[a-zA-Z0-9_-.\@]+`.
  late final Output<String> name;

  /// The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.
  late final Output<String?> password;

  /// A block that contains information about the phone settings for the user. Documented below.
  late final Output<UserPhoneConfig> phoneConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The identifier of the routing profile for the user.
  late final Output<String> routingProfileId;

  /// A list of identifiers for the security profiles for the user. Specify a minimum of 1 and maximum of 10 security profile ids. For more information, see [Best Practices for Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html) in the Amazon Connect Administrator Guide.
  late final Output<List<String>> securityProfileIds;

  /// Tags to apply to the user. If configured with a provider
  /// <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The identifier for the user.
  late final Output<String> userId;

  User3(
    String name, {
    UserArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.directoryUserId = Output.createUnknown<String>();
    this.hierarchyGroupId = Output.createUnknown<String?>();
    this.identityInfo = Output.createUnknown<UserIdentityInfo?>();
    this.instanceId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.password = Output.createUnknown<String?>();
    this.phoneConfig = Output.createUnknown<UserPhoneConfig>();
    this.region = Output.createUnknown<String>();
    this.routingProfileId = Output.createUnknown<String>();
    this.securityProfileIds = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.userId = Output.createUnknown<String>();
  }
}
