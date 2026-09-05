import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_list_args.dart';
import 'contact_list_state.dart';
import 'contact_list_topic.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Contact List.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.ContactList("example", {contactListName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ContactList("example", contact_list_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.ContactList("example", new()
///     {
///         ContactListName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewContactList(ctx, "example", &sesv2.ContactListArgs{
/// 			ContactListName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_sesv2_contactlist" "example" {
///   contact_list_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sesv2.ContactList;
/// import com.pulumi.aws.sesv2.ContactListArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new ContactList("example", ContactListArgs.builder()
///             .contactListName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ContactList
///     properties:
///       contactListName: example
/// ```
///
///
/// ### Extended Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.ContactList("example", {
///     topics: [{
///         defaultSubscriptionStatus: "OPT_IN",
///         description: "topic description",
///         displayName: "Example Topic",
///         topicName: "example-topic",
///     }],
///     contactListName: "example",
///     description: "description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ContactList("example",
///     topics=[{
///         "default_subscription_status": "OPT_IN",
///         "description": "topic description",
///         "display_name": "Example Topic",
///         "topic_name": "example-topic",
///     }],
///     contact_list_name="example",
///     description="description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.ContactList("example", new()
///     {
///         Topics = new[]
///         {
///             new Aws.SesV2.Inputs.ContactListTopicArgs
///             {
///                 DefaultSubscriptionStatus = "OPT_IN",
///                 Description = "topic description",
///                 DisplayName = "Example Topic",
///                 TopicName = "example-topic",
///             },
///         },
///         ContactListName = "example",
///         Description = "description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewContactList(ctx, "example", &sesv2.ContactListArgs{
/// 			Topics: sesv2.ContactListTopicArray{
/// 				&sesv2.ContactListTopicArgs{
/// 					DefaultSubscriptionStatus: pulumi.String("OPT_IN"),
/// 					Description:               pulumi.String("topic description"),
/// 					DisplayName:               pulumi.String("Example Topic"),
/// 					TopicName:                 pulumi.String("example-topic"),
/// 				},
/// 			},
/// 			ContactListName: pulumi.String("example"),
/// 			Description:     pulumi.String("description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_sesv2_contactlist" "example" {
///   topics {
///     default_subscription_status = "OPT_IN"
///     description                 = "topic description"
///     display_name                = "Example Topic"
///     topic_name                  = "example-topic"
///   }
///   contact_list_name = "example"
///   description       = "description"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sesv2.ContactList;
/// import com.pulumi.aws.sesv2.ContactListArgs;
/// import com.pulumi.aws.sesv2.inputs.ContactListTopicArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new ContactList("example", ContactListArgs.builder()
///             .topics(ContactListTopicArgs.builder()
///                 .defaultSubscriptionStatus("OPT_IN")
///                 .description("topic description")
///                 .displayName("Example Topic")
///                 .topicName("example-topic")
///                 .build())
///             .contactListName("example")
///             .description("description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ContactList
///     properties:
///       topics:
///         - defaultSubscriptionStatus: OPT_IN
///           description: topic description
///           displayName: Example Topic
///           topicName: example-topic
///       contactListName: example
///       description: description
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Contact List using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/contactList:ContactList example example
/// ```
class ContactList extends pulumi.CustomResource {
  /// ARN of the contact list.
  late final pulumi.Output<String> arn;
  /// Name of the contact list.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> contactListName;
  /// Timestamp noting when the contact list was created in ISO 8601 format.
  late final pulumi.Output<String> createdTimestamp;
  /// Description of what the contact list is about.
  late final pulumi.Output<String?> description;
  /// Timestamp noting the last time the contact list was updated in ISO 8601 format.
  late final pulumi.Output<String> lastUpdatedTimestamp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags for the contact list. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block(s) with topic for the contact list. Detailed below.
  late final pulumi.Output<List<ContactListTopic>?> topics;

  /// Creates a new [ContactList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContactList]. {@macro pulumi_sesv2_contact_list_contact_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContactList(
    String name, {
    ContactListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/contactList:ContactList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    contactListName = registerOutput<String>('contactListName');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    description = registerOutput<String?>('description');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topics = registerOutput<List<ContactListTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContactListTopic>(guardedValue, (value) => ContactListTopic.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [ContactList] resource's state with the given [name] and [id].
  static ContactList get(
    String name,
    pulumi.Input<String> id, {
    ContactListState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ContactList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ContactList._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/contactList:ContactList',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    contactListName = registerOutput<String>('contactListName');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    description = registerOutput<String?>('description');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topics = registerOutput<List<ContactListTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContactListTopic>(guardedValue, (value) => ContactListTopic.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ContactList] resource.
  ContactList.reference(String urn)
    : super(
        'aws:sesv2/contactList:ContactList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    contactListName = registerOutput<String>('contactListName');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    description = registerOutput<String?>('description');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topics = registerOutput<List<ContactListTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContactListTopic>(guardedValue, (value) => ContactListTopic.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
