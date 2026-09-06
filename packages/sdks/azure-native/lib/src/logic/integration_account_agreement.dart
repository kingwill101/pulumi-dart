import 'package:pulumi/pulumi.dart' as pulumi;
import 'agreement_content_response.dart';
import 'business_identity_response.dart';
import 'integration_account_agreement_args.dart';

/// The integration account agreement.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an agreement
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationAccountAgreement = new AzureNative.Logic.IntegrationAccountAgreement("integrationAccountAgreement", new()
///     {
///         AgreementName = "testAgreement",
///         AgreementType = AzureNative.Logic.AgreementType.AS2,
///         Content = new AzureNative.Logic.Inputs.AgreementContentArgs
///         {
///             AS2 = new AzureNative.Logic.Inputs.AS2AgreementContentArgs
///             {
///                 ReceiveAgreement = new AzureNative.Logic.Inputs.AS2OneWayAgreementArgs
///                 {
///                     ProtocolSettings = new AzureNative.Logic.Inputs.AS2ProtocolSettingsArgs
///                     {
///                         AcknowledgementConnectionSettings = new AzureNative.Logic.Inputs.AS2AcknowledgementConnectionSettingsArgs
///                         {
///                             IgnoreCertificateNameMismatch = true,
///                             KeepHttpConnectionAlive = true,
///                             SupportHttpStatusCodeContinue = true,
///                             UnfoldHttpHeaders = true,
///                         },
///                         EnvelopeSettings = new AzureNative.Logic.Inputs.AS2EnvelopeSettingsArgs
///                         {
///                             AutogenerateFileName = true,
///                             FileNameTemplate = "Test",
///                             MessageContentType = "text/plain",
///                             SuspendMessageOnFileNameGenerationError = true,
///                             TransmitFileNameInMimeHeader = true,
///                         },
///                         ErrorSettings = new AzureNative.Logic.Inputs.AS2ErrorSettingsArgs
///                         {
///                             ResendIfMDNNotReceived = true,
///                             SuspendDuplicateMessage = true,
///                         },
///                         MdnSettings = new AzureNative.Logic.Inputs.AS2MdnSettingsArgs
///                         {
///                             DispositionNotificationTo = "http://tempuri.org",
///                             MdnText = "Sample",
///                             MicHashingAlgorithm = AzureNative.Logic.HashingAlgorithm.SHA1,
///                             NeedMDN = true,
///                             ReceiptDeliveryUrl = "http://tempuri.org",
///                             SendInboundMDNToMessageBox = true,
///                             SendMDNAsynchronously = true,
///                             SignMDN = true,
///                             SignOutboundMDNIfOptional = true,
///                         },
///                         MessageConnectionSettings = new AzureNative.Logic.Inputs.AS2MessageConnectionSettingsArgs
///                         {
///                             IgnoreCertificateNameMismatch = true,
///                             KeepHttpConnectionAlive = true,
///                             SupportHttpStatusCodeContinue = true,
///                             UnfoldHttpHeaders = true,
///                         },
///                         SecuritySettings = new AzureNative.Logic.Inputs.AS2SecuritySettingsArgs
///                         {
///                             EnableNRRForInboundDecodedMessages = true,
///                             EnableNRRForInboundEncodedMessages = true,
///                             EnableNRRForInboundMDN = true,
///                             EnableNRRForOutboundDecodedMessages = true,
///                             EnableNRRForOutboundEncodedMessages = true,
///                             EnableNRRForOutboundMDN = true,
///                             OverrideGroupSigningCertificate = false,
///                         },
///                         ValidationSettings = new AzureNative.Logic.Inputs.AS2ValidationSettingsArgs
///                         {
///                             CheckCertificateRevocationListOnReceive = true,
///                             CheckCertificateRevocationListOnSend = true,
///                             CheckDuplicateMessage = true,
///                             CompressMessage = true,
///                             EncryptMessage = false,
///                             EncryptionAlgorithm = AzureNative.Logic.EncryptionAlgorithm.AES128,
///                             InterchangeDuplicatesValidityDays = 100,
///                             OverrideMessageProperties = true,
///                             SignMessage = false,
///                         },
///                     },
///                     ReceiverBusinessIdentity = new AzureNative.Logic.Inputs.BusinessIdentityArgs
///                     {
///                         Qualifier = "ZZ",
///                         Value = "ZZ",
///                     },
///                     SenderBusinessIdentity = new AzureNative.Logic.Inputs.BusinessIdentityArgs
///                     {
///                         Qualifier = "AA",
///                         Value = "AA",
///                     },
///                 },
///                 SendAgreement = new AzureNative.Logic.Inputs.AS2OneWayAgreementArgs
///                 {
///                     ProtocolSettings = new AzureNative.Logic.Inputs.AS2ProtocolSettingsArgs
///                     {
///                         AcknowledgementConnectionSettings = new AzureNative.Logic.Inputs.AS2AcknowledgementConnectionSettingsArgs
///                         {
///                             IgnoreCertificateNameMismatch = true,
///                             KeepHttpConnectionAlive = true,
///                             SupportHttpStatusCodeContinue = true,
///                             UnfoldHttpHeaders = true,
///                         },
///                         EnvelopeSettings = new AzureNative.Logic.Inputs.AS2EnvelopeSettingsArgs
///                         {
///                             AutogenerateFileName = true,
///                             FileNameTemplate = "Test",
///                             MessageContentType = "text/plain",
///                             SuspendMessageOnFileNameGenerationError = true,
///                             TransmitFileNameInMimeHeader = true,
///                         },
///                         ErrorSettings = new AzureNative.Logic.Inputs.AS2ErrorSettingsArgs
///                         {
///                             ResendIfMDNNotReceived = true,
///                             SuspendDuplicateMessage = true,
///                         },
///                         MdnSettings = new AzureNative.Logic.Inputs.AS2MdnSettingsArgs
///                         {
///                             DispositionNotificationTo = "http://tempuri.org",
///                             MdnText = "Sample",
///                             MicHashingAlgorithm = AzureNative.Logic.HashingAlgorithm.SHA1,
///                             NeedMDN = true,
///                             ReceiptDeliveryUrl = "http://tempuri.org",
///                             SendInboundMDNToMessageBox = true,
///                             SendMDNAsynchronously = true,
///                             SignMDN = true,
///                             SignOutboundMDNIfOptional = true,
///                         },
///                         MessageConnectionSettings = new AzureNative.Logic.Inputs.AS2MessageConnectionSettingsArgs
///                         {
///                             IgnoreCertificateNameMismatch = true,
///                             KeepHttpConnectionAlive = true,
///                             SupportHttpStatusCodeContinue = true,
///                             UnfoldHttpHeaders = true,
///                         },
///                         SecuritySettings = new AzureNative.Logic.Inputs.AS2SecuritySettingsArgs
///                         {
///                             EnableNRRForInboundDecodedMessages = true,
///                             EnableNRRForInboundEncodedMessages = true,
///                             EnableNRRForInboundMDN = true,
///                             EnableNRRForOutboundDecodedMessages = true,
///                             EnableNRRForOutboundEncodedMessages = true,
///                             EnableNRRForOutboundMDN = true,
///                             OverrideGroupSigningCertificate = false,
///                         },
///                         ValidationSettings = new AzureNative.Logic.Inputs.AS2ValidationSettingsArgs
///                         {
///                             CheckCertificateRevocationListOnReceive = true,
///                             CheckCertificateRevocationListOnSend = true,
///                             CheckDuplicateMessage = true,
///                             CompressMessage = true,
///                             EncryptMessage = false,
///                             EncryptionAlgorithm = AzureNative.Logic.EncryptionAlgorithm.AES128,
///                             InterchangeDuplicatesValidityDays = 100,
///                             OverrideMessageProperties = true,
///                             SignMessage = false,
///                         },
///                     },
///                     ReceiverBusinessIdentity = new AzureNative.Logic.Inputs.BusinessIdentityArgs
///                     {
///                         Qualifier = "AA",
///                         Value = "AA",
///                     },
///                     SenderBusinessIdentity = new AzureNative.Logic.Inputs.BusinessIdentityArgs
///                     {
///                         Qualifier = "ZZ",
///                         Value = "ZZ",
///                     },
///                 },
///             },
///         },
///         GuestIdentity = new AzureNative.Logic.Inputs.BusinessIdentityArgs
///         {
///             Qualifier = "AA",
///             Value = "AA",
///         },
///         GuestPartner = "GuestPartner",
///         HostIdentity = new AzureNative.Logic.Inputs.BusinessIdentityArgs
///         {
///             Qualifier = "ZZ",
///             Value = "ZZ",
///         },
///         HostPartner = "HostPartner",
///         IntegrationAccountName = "testIntegrationAccount",
///         Location = "westus",
///         Metadata = null,
///         ResourceGroupName = "testResourceGroup",
///         Tags =
///         {
///             { "IntegrationAccountAgreement", "<IntegrationAccountAgreementName>" },
///         },
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
/// 	logic "github.com/pulumi/pulumi-azure-native-sdk/logic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logic.NewIntegrationAccountAgreement(ctx, "integrationAccountAgreement", &logic.IntegrationAccountAgreementArgs{
/// 			AgreementName: pulumi.String("testAgreement"),
/// 			AgreementType: logic.AgreementTypeAS2,
/// 			Content: &logic.AgreementContentArgs{
/// 				AS2: &logic.AS2AgreementContentArgs{
/// 					ReceiveAgreement: &logic.AS2OneWayAgreementArgs{
/// 						ProtocolSettings: &logic.AS2ProtocolSettingsArgs{
/// 							AcknowledgementConnectionSettings: &logic.AS2AcknowledgementConnectionSettingsArgs{
/// 								IgnoreCertificateNameMismatch: pulumi.Bool(true),
/// 								KeepHttpConnectionAlive:       pulumi.Bool(true),
/// 								SupportHttpStatusCodeContinue: pulumi.Bool(true),
/// 								UnfoldHttpHeaders:             pulumi.Bool(true),
/// 							},
/// 							EnvelopeSettings: &logic.AS2EnvelopeSettingsArgs{
/// 								AutogenerateFileName:                    pulumi.Bool(true),
/// 								FileNameTemplate:                        pulumi.String("Test"),
/// 								MessageContentType:                      pulumi.String("text/plain"),
/// 								SuspendMessageOnFileNameGenerationError: pulumi.Bool(true),
/// 								TransmitFileNameInMimeHeader:            pulumi.Bool(true),
/// 							},
/// 							ErrorSettings: &logic.AS2ErrorSettingsArgs{
/// 								ResendIfMDNNotReceived:  pulumi.Bool(true),
/// 								SuspendDuplicateMessage: pulumi.Bool(true),
/// 							},
/// 							MdnSettings: &logic.AS2MdnSettingsArgs{
/// 								DispositionNotificationTo:  pulumi.String("http://tempuri.org"),
/// 								MdnText:                    pulumi.String("Sample"),
/// 								MicHashingAlgorithm:        pulumi.String(logic.HashingAlgorithmSHA1),
/// 								NeedMDN:                    pulumi.Bool(true),
/// 								ReceiptDeliveryUrl:         pulumi.String("http://tempuri.org"),
/// 								SendInboundMDNToMessageBox: pulumi.Bool(true),
/// 								SendMDNAsynchronously:      pulumi.Bool(true),
/// 								SignMDN:                    pulumi.Bool(true),
/// 								SignOutboundMDNIfOptional:  pulumi.Bool(true),
/// 							},
/// 							MessageConnectionSettings: &logic.AS2MessageConnectionSettingsArgs{
/// 								IgnoreCertificateNameMismatch: pulumi.Bool(true),
/// 								KeepHttpConnectionAlive:       pulumi.Bool(true),
/// 								SupportHttpStatusCodeContinue: pulumi.Bool(true),
/// 								UnfoldHttpHeaders:             pulumi.Bool(true),
/// 							},
/// 							SecuritySettings: &logic.AS2SecuritySettingsArgs{
/// 								EnableNRRForInboundDecodedMessages:  pulumi.Bool(true),
/// 								EnableNRRForInboundEncodedMessages:  pulumi.Bool(true),
/// 								EnableNRRForInboundMDN:              pulumi.Bool(true),
/// 								EnableNRRForOutboundDecodedMessages: pulumi.Bool(true),
/// 								EnableNRRForOutboundEncodedMessages: pulumi.Bool(true),
/// 								EnableNRRForOutboundMDN:             pulumi.Bool(true),
/// 								OverrideGroupSigningCertificate:     pulumi.Bool(false),
/// 							},
/// 							ValidationSettings: &logic.AS2ValidationSettingsArgs{
/// 								CheckCertificateRevocationListOnReceive: pulumi.Bool(true),
/// 								CheckCertificateRevocationListOnSend:    pulumi.Bool(true),
/// 								CheckDuplicateMessage:                   pulumi.Bool(true),
/// 								CompressMessage:                         pulumi.Bool(true),
/// 								EncryptMessage:                          pulumi.Bool(false),
/// 								EncryptionAlgorithm:                     pulumi.String(logic.EncryptionAlgorithmAES128),
/// 								InterchangeDuplicatesValidityDays:       pulumi.Int(100),
/// 								OverrideMessageProperties:               pulumi.Bool(true),
/// 								SignMessage:                             pulumi.Bool(false),
/// 							},
/// 						},
/// 						ReceiverBusinessIdentity: &logic.BusinessIdentityArgs{
/// 							Qualifier: pulumi.String("ZZ"),
/// 							Value:     pulumi.String("ZZ"),
/// 						},
/// 						SenderBusinessIdentity: &logic.BusinessIdentityArgs{
/// 							Qualifier: pulumi.String("AA"),
/// 							Value:     pulumi.String("AA"),
/// 						},
/// 					},
/// 					SendAgreement: &logic.AS2OneWayAgreementArgs{
/// 						ProtocolSettings: &logic.AS2ProtocolSettingsArgs{
/// 							AcknowledgementConnectionSettings: &logic.AS2AcknowledgementConnectionSettingsArgs{
/// 								IgnoreCertificateNameMismatch: pulumi.Bool(true),
/// 								KeepHttpConnectionAlive:       pulumi.Bool(true),
/// 								SupportHttpStatusCodeContinue: pulumi.Bool(true),
/// 								UnfoldHttpHeaders:             pulumi.Bool(true),
/// 							},
/// 							EnvelopeSettings: &logic.AS2EnvelopeSettingsArgs{
/// 								AutogenerateFileName:                    pulumi.Bool(true),
/// 								FileNameTemplate:                        pulumi.String("Test"),
/// 								MessageContentType:                      pulumi.String("text/plain"),
/// 								SuspendMessageOnFileNameGenerationError: pulumi.Bool(true),
/// 								TransmitFileNameInMimeHeader:            pulumi.Bool(true),
/// 							},
/// 							ErrorSettings: &logic.AS2ErrorSettingsArgs{
/// 								ResendIfMDNNotReceived:  pulumi.Bool(true),
/// 								SuspendDuplicateMessage: pulumi.Bool(true),
/// 							},
/// 							MdnSettings: &logic.AS2MdnSettingsArgs{
/// 								DispositionNotificationTo:  pulumi.String("http://tempuri.org"),
/// 								MdnText:                    pulumi.String("Sample"),
/// 								MicHashingAlgorithm:        pulumi.String(logic.HashingAlgorithmSHA1),
/// 								NeedMDN:                    pulumi.Bool(true),
/// 								ReceiptDeliveryUrl:         pulumi.String("http://tempuri.org"),
/// 								SendInboundMDNToMessageBox: pulumi.Bool(true),
/// 								SendMDNAsynchronously:      pulumi.Bool(true),
/// 								SignMDN:                    pulumi.Bool(true),
/// 								SignOutboundMDNIfOptional:  pulumi.Bool(true),
/// 							},
/// 							MessageConnectionSettings: &logic.AS2MessageConnectionSettingsArgs{
/// 								IgnoreCertificateNameMismatch: pulumi.Bool(true),
/// 								KeepHttpConnectionAlive:       pulumi.Bool(true),
/// 								SupportHttpStatusCodeContinue: pulumi.Bool(true),
/// 								UnfoldHttpHeaders:             pulumi.Bool(true),
/// 							},
/// 							SecuritySettings: &logic.AS2SecuritySettingsArgs{
/// 								EnableNRRForInboundDecodedMessages:  pulumi.Bool(true),
/// 								EnableNRRForInboundEncodedMessages:  pulumi.Bool(true),
/// 								EnableNRRForInboundMDN:              pulumi.Bool(true),
/// 								EnableNRRForOutboundDecodedMessages: pulumi.Bool(true),
/// 								EnableNRRForOutboundEncodedMessages: pulumi.Bool(true),
/// 								EnableNRRForOutboundMDN:             pulumi.Bool(true),
/// 								OverrideGroupSigningCertificate:     pulumi.Bool(false),
/// 							},
/// 							ValidationSettings: &logic.AS2ValidationSettingsArgs{
/// 								CheckCertificateRevocationListOnReceive: pulumi.Bool(true),
/// 								CheckCertificateRevocationListOnSend:    pulumi.Bool(true),
/// 								CheckDuplicateMessage:                   pulumi.Bool(true),
/// 								CompressMessage:                         pulumi.Bool(true),
/// 								EncryptMessage:                          pulumi.Bool(false),
/// 								EncryptionAlgorithm:                     pulumi.String(logic.EncryptionAlgorithmAES128),
/// 								InterchangeDuplicatesValidityDays:       pulumi.Int(100),
/// 								OverrideMessageProperties:               pulumi.Bool(true),
/// 								SignMessage:                             pulumi.Bool(false),
/// 							},
/// 						},
/// 						ReceiverBusinessIdentity: &logic.BusinessIdentityArgs{
/// 							Qualifier: pulumi.String("AA"),
/// 							Value:     pulumi.String("AA"),
/// 						},
/// 						SenderBusinessIdentity: &logic.BusinessIdentityArgs{
/// 							Qualifier: pulumi.String("ZZ"),
/// 							Value:     pulumi.String("ZZ"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			GuestIdentity: &logic.BusinessIdentityArgs{
/// 				Qualifier: pulumi.String("AA"),
/// 				Value:     pulumi.String("AA"),
/// 			},
/// 			GuestPartner: pulumi.String("GuestPartner"),
/// 			HostIdentity: &logic.BusinessIdentityArgs{
/// 				Qualifier: pulumi.String("ZZ"),
/// 				Value:     pulumi.String("ZZ"),
/// 			},
/// 			HostPartner:            pulumi.String("HostPartner"),
/// 			IntegrationAccountName: pulumi.String("testIntegrationAccount"),
/// 			Location:               pulumi.String("westus"),
/// 			Metadata:               pulumi.Any(map[string]interface{}{}),
/// 			ResourceGroupName:      pulumi.String("testResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"IntegrationAccountAgreement": pulumi.String("<IntegrationAccountAgreementName>"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_logic_integrationaccountagreement" "integrationAccountAgreement" {
///   agreement_name = "testAgreement"
///   agreement_type = "AS2"
///   content = {
///     a_s2 = {
///       receive_agreement = {
///         protocol_settings = {
///           acknowledgement_connection_settings = {
///             ignore_certificate_name_mismatch  = true
///             keep_http_connection_alive        = true
///             support_http_status_code_continue = true
///             unfold_http_headers               = true
///           }
///           envelope_settings = {
///             autogenerate_file_name                        = true
///             file_name_template                            = "Test"
///             message_content_type                          = "text/plain"
///             suspend_message_on_file_name_generation_error = true
///             transmit_file_name_in_mime_header             = true
///           }
///           error_settings = {
///             resend_if_mdn_not_received = true
///             suspend_duplicate_message  = true
///           }
///           mdn_settings = {
///             disposition_notification_to     = "http://tempuri.org"
///             mdn_text                        = "Sample"
///             mic_hashing_algorithm           = "SHA1"
///             need_mdn                        = true
///             receipt_delivery_url            = "http://tempuri.org"
///             send_inbound_mdn_to_message_box = true
///             send_mdn_asynchronously         = true
///             sign_mdn                        = true
///             sign_outbound_mdn_if_optional   = true
///           }
///           message_connection_settings = {
///             ignore_certificate_name_mismatch  = true
///             keep_http_connection_alive        = true
///             support_http_status_code_continue = true
///             unfold_http_headers               = true
///           }
///           security_settings = {
///             enable_nrr_for_inbound_decoded_messages  = true
///             enable_nrr_for_inbound_encoded_messages  = true
///             enable_nrr_for_inbound_mdn               = true
///             enable_nrr_for_outbound_decoded_messages = true
///             enable_nrr_for_outbound_encoded_messages = true
///             enable_nrr_for_outbound_mdn              = true
///             override_group_signing_certificate       = false
///           }
///           validation_settings = {
///             check_certificate_revocation_list_on_receive = true
///             check_certificate_revocation_list_on_send    = true
///             check_duplicate_message                      = true
///             compress_message                             = true
///             encrypt_message                              = false
///             encryption_algorithm                         = "AES128"
///             interchange_duplicates_validity_days         = 100
///             override_message_properties                  = true
///             sign_message                                 = false
///           }
///         }
///         receiver_business_identity = {
///           qualifier = "ZZ"
///           value     = "ZZ"
///         }
///         sender_business_identity = {
///           qualifier = "AA"
///           value     = "AA"
///         }
///       }
///       send_agreement = {
///         protocol_settings = {
///           acknowledgement_connection_settings = {
///             ignore_certificate_name_mismatch  = true
///             keep_http_connection_alive        = true
///             support_http_status_code_continue = true
///             unfold_http_headers               = true
///           }
///           envelope_settings = {
///             autogenerate_file_name                        = true
///             file_name_template                            = "Test"
///             message_content_type                          = "text/plain"
///             suspend_message_on_file_name_generation_error = true
///             transmit_file_name_in_mime_header             = true
///           }
///           error_settings = {
///             resend_if_mdn_not_received = true
///             suspend_duplicate_message  = true
///           }
///           mdn_settings = {
///             disposition_notification_to     = "http://tempuri.org"
///             mdn_text                        = "Sample"
///             mic_hashing_algorithm           = "SHA1"
///             need_mdn                        = true
///             receipt_delivery_url            = "http://tempuri.org"
///             send_inbound_mdn_to_message_box = true
///             send_mdn_asynchronously         = true
///             sign_mdn                        = true
///             sign_outbound_mdn_if_optional   = true
///           }
///           message_connection_settings = {
///             ignore_certificate_name_mismatch  = true
///             keep_http_connection_alive        = true
///             support_http_status_code_continue = true
///             unfold_http_headers               = true
///           }
///           security_settings = {
///             enable_nrr_for_inbound_decoded_messages  = true
///             enable_nrr_for_inbound_encoded_messages  = true
///             enable_nrr_for_inbound_mdn               = true
///             enable_nrr_for_outbound_decoded_messages = true
///             enable_nrr_for_outbound_encoded_messages = true
///             enable_nrr_for_outbound_mdn              = true
///             override_group_signing_certificate       = false
///           }
///           validation_settings = {
///             check_certificate_revocation_list_on_receive = true
///             check_certificate_revocation_list_on_send    = true
///             check_duplicate_message                      = true
///             compress_message                             = true
///             encrypt_message                              = false
///             encryption_algorithm                         = "AES128"
///             interchange_duplicates_validity_days         = 100
///             override_message_properties                  = true
///             sign_message                                 = false
///           }
///         }
///         receiver_business_identity = {
///           qualifier = "AA"
///           value     = "AA"
///         }
///         sender_business_identity = {
///           qualifier = "ZZ"
///           value     = "ZZ"
///         }
///       }
///     }
///   }
///   guest_identity = {
///     qualifier = "AA"
///     value     = "AA"
///   }
///   guest_partner = "GuestPartner"
///   host_identity = {
///     qualifier = "ZZ"
///     value     = "ZZ"
///   }
///   host_partner             = "HostPartner"
///   integration_account_name = "testIntegrationAccount"
///   location                 = "westus"
///   metadata                 = {}
///   resource_group_name      = "testResourceGroup"
///   tags = {
///     "IntegrationAccountAgreement" = "<IntegrationAccountAgreementName>"
///   }
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
/// import com.pulumi.azurenative.logic.IntegrationAccountAgreement;
/// import com.pulumi.azurenative.logic.IntegrationAccountAgreementArgs;
/// import com.pulumi.azurenative.logic.inputs.AgreementContentArgs;
/// import com.pulumi.azurenative.logic.inputs.AS2AgreementContentArgs;
/// import com.pulumi.azurenative.logic.inputs.AS2OneWayAgreementArgs;
/// import com.pulumi.azurenative.logic.inputs.AS2ProtocolSettingsArgs;
/// import com.pulumi.azurenative.logic.inputs.AS2AcknowledgementConnectionSettingsArgs;
/// import com.pulumi.azurenative.logic.inputs.AS2EnvelopeSettingsArgs;
/// import com.pulumi.azurenative.logic.inputs.AS2ErrorSettingsArgs;
/// import com.pulumi.azurenative.logic.inputs.AS2MdnSettingsArgs;
/// import com.pulumi.azurenative.logic.inputs.AS2MessageConnectionSettingsArgs;
/// import com.pulumi.azurenative.logic.inputs.AS2SecuritySettingsArgs;
/// import com.pulumi.azurenative.logic.inputs.AS2ValidationSettingsArgs;
/// import com.pulumi.azurenative.logic.inputs.BusinessIdentityArgs;
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
///         var integrationAccountAgreement = new IntegrationAccountAgreement("integrationAccountAgreement", IntegrationAccountAgreementArgs.builder()
///             .agreementName("testAgreement")
///             .agreementType("AS2")
///             .content(AgreementContentArgs.builder()
///                 .aS2(AS2AgreementContentArgs.builder()
///                     .receiveAgreement(AS2OneWayAgreementArgs.builder()
///                         .protocolSettings(AS2ProtocolSettingsArgs.builder()
///                             .acknowledgementConnectionSettings(AS2AcknowledgementConnectionSettingsArgs.builder()
///                                 .ignoreCertificateNameMismatch(true)
///                                 .keepHttpConnectionAlive(true)
///                                 .supportHttpStatusCodeContinue(true)
///                                 .unfoldHttpHeaders(true)
///                                 .build())
///                             .envelopeSettings(AS2EnvelopeSettingsArgs.builder()
///                                 .autogenerateFileName(true)
///                                 .fileNameTemplate("Test")
///                                 .messageContentType("text/plain")
///                                 .suspendMessageOnFileNameGenerationError(true)
///                                 .transmitFileNameInMimeHeader(true)
///                                 .build())
///                             .errorSettings(AS2ErrorSettingsArgs.builder()
///                                 .resendIfMDNNotReceived(true)
///                                 .suspendDuplicateMessage(true)
///                                 .build())
///                             .mdnSettings(AS2MdnSettingsArgs.builder()
///                                 .dispositionNotificationTo("http://tempuri.org")
///                                 .mdnText("Sample")
///                                 .micHashingAlgorithm("SHA1")
///                                 .needMDN(true)
///                                 .receiptDeliveryUrl("http://tempuri.org")
///                                 .sendInboundMDNToMessageBox(true)
///                                 .sendMDNAsynchronously(true)
///                                 .signMDN(true)
///                                 .signOutboundMDNIfOptional(true)
///                                 .build())
///                             .messageConnectionSettings(AS2MessageConnectionSettingsArgs.builder()
///                                 .ignoreCertificateNameMismatch(true)
///                                 .keepHttpConnectionAlive(true)
///                                 .supportHttpStatusCodeContinue(true)
///                                 .unfoldHttpHeaders(true)
///                                 .build())
///                             .securitySettings(AS2SecuritySettingsArgs.builder()
///                                 .enableNRRForInboundDecodedMessages(true)
///                                 .enableNRRForInboundEncodedMessages(true)
///                                 .enableNRRForInboundMDN(true)
///                                 .enableNRRForOutboundDecodedMessages(true)
///                                 .enableNRRForOutboundEncodedMessages(true)
///                                 .enableNRRForOutboundMDN(true)
///                                 .overrideGroupSigningCertificate(false)
///                                 .build())
///                             .validationSettings(AS2ValidationSettingsArgs.builder()
///                                 .checkCertificateRevocationListOnReceive(true)
///                                 .checkCertificateRevocationListOnSend(true)
///                                 .checkDuplicateMessage(true)
///                                 .compressMessage(true)
///                                 .encryptMessage(false)
///                                 .encryptionAlgorithm("AES128")
///                                 .interchangeDuplicatesValidityDays(100)
///                                 .overrideMessageProperties(true)
///                                 .signMessage(false)
///                                 .build())
///                             .build())
///                         .receiverBusinessIdentity(BusinessIdentityArgs.builder()
///                             .qualifier("ZZ")
///                             .value("ZZ")
///                             .build())
///                         .senderBusinessIdentity(BusinessIdentityArgs.builder()
///                             .qualifier("AA")
///                             .value("AA")
///                             .build())
///                         .build())
///                     .sendAgreement(AS2OneWayAgreementArgs.builder()
///                         .protocolSettings(AS2ProtocolSettingsArgs.builder()
///                             .acknowledgementConnectionSettings(AS2AcknowledgementConnectionSettingsArgs.builder()
///                                 .ignoreCertificateNameMismatch(true)
///                                 .keepHttpConnectionAlive(true)
///                                 .supportHttpStatusCodeContinue(true)
///                                 .unfoldHttpHeaders(true)
///                                 .build())
///                             .envelopeSettings(AS2EnvelopeSettingsArgs.builder()
///                                 .autogenerateFileName(true)
///                                 .fileNameTemplate("Test")
///                                 .messageContentType("text/plain")
///                                 .suspendMessageOnFileNameGenerationError(true)
///                                 .transmitFileNameInMimeHeader(true)
///                                 .build())
///                             .errorSettings(AS2ErrorSettingsArgs.builder()
///                                 .resendIfMDNNotReceived(true)
///                                 .suspendDuplicateMessage(true)
///                                 .build())
///                             .mdnSettings(AS2MdnSettingsArgs.builder()
///                                 .dispositionNotificationTo("http://tempuri.org")
///                                 .mdnText("Sample")
///                                 .micHashingAlgorithm("SHA1")
///                                 .needMDN(true)
///                                 .receiptDeliveryUrl("http://tempuri.org")
///                                 .sendInboundMDNToMessageBox(true)
///                                 .sendMDNAsynchronously(true)
///                                 .signMDN(true)
///                                 .signOutboundMDNIfOptional(true)
///                                 .build())
///                             .messageConnectionSettings(AS2MessageConnectionSettingsArgs.builder()
///                                 .ignoreCertificateNameMismatch(true)
///                                 .keepHttpConnectionAlive(true)
///                                 .supportHttpStatusCodeContinue(true)
///                                 .unfoldHttpHeaders(true)
///                                 .build())
///                             .securitySettings(AS2SecuritySettingsArgs.builder()
///                                 .enableNRRForInboundDecodedMessages(true)
///                                 .enableNRRForInboundEncodedMessages(true)
///                                 .enableNRRForInboundMDN(true)
///                                 .enableNRRForOutboundDecodedMessages(true)
///                                 .enableNRRForOutboundEncodedMessages(true)
///                                 .enableNRRForOutboundMDN(true)
///                                 .overrideGroupSigningCertificate(false)
///                                 .build())
///                             .validationSettings(AS2ValidationSettingsArgs.builder()
///                                 .checkCertificateRevocationListOnReceive(true)
///                                 .checkCertificateRevocationListOnSend(true)
///                                 .checkDuplicateMessage(true)
///                                 .compressMessage(true)
///                                 .encryptMessage(false)
///                                 .encryptionAlgorithm("AES128")
///                                 .interchangeDuplicatesValidityDays(100)
///                                 .overrideMessageProperties(true)
///                                 .signMessage(false)
///                                 .build())
///                             .build())
///                         .receiverBusinessIdentity(BusinessIdentityArgs.builder()
///                             .qualifier("AA")
///                             .value("AA")
///                             .build())
///                         .senderBusinessIdentity(BusinessIdentityArgs.builder()
///                             .qualifier("ZZ")
///                             .value("ZZ")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .guestIdentity(BusinessIdentityArgs.builder()
///                 .qualifier("AA")
///                 .value("AA")
///                 .build())
///             .guestPartner("GuestPartner")
///             .hostIdentity(BusinessIdentityArgs.builder()
///                 .qualifier("ZZ")
///                 .value("ZZ")
///                 .build())
///             .hostPartner("HostPartner")
///             .integrationAccountName("testIntegrationAccount")
///             .location("westus")
///             .metadata(Map.ofEntries(
///             ))
///             .resourceGroupName("testResourceGroup")
///             .tags(Map.of("IntegrationAccountAgreement", "<IntegrationAccountAgreementName>"))
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
/// const integrationAccountAgreement = new azure_native.logic.IntegrationAccountAgreement("integrationAccountAgreement", {
///     agreementName: "testAgreement",
///     agreementType: azure_native.logic.AgreementType.AS2,
///     content: {
///         aS2: {
///             receiveAgreement: {
///                 protocolSettings: {
///                     acknowledgementConnectionSettings: {
///                         ignoreCertificateNameMismatch: true,
///                         keepHttpConnectionAlive: true,
///                         supportHttpStatusCodeContinue: true,
///                         unfoldHttpHeaders: true,
///                     },
///                     envelopeSettings: {
///                         autogenerateFileName: true,
///                         fileNameTemplate: "Test",
///                         messageContentType: "text/plain",
///                         suspendMessageOnFileNameGenerationError: true,
///                         transmitFileNameInMimeHeader: true,
///                     },
///                     errorSettings: {
///                         resendIfMDNNotReceived: true,
///                         suspendDuplicateMessage: true,
///                     },
///                     mdnSettings: {
///                         dispositionNotificationTo: "http://tempuri.org",
///                         mdnText: "Sample",
///                         micHashingAlgorithm: azure_native.logic.HashingAlgorithm.SHA1,
///                         needMDN: true,
///                         receiptDeliveryUrl: "http://tempuri.org",
///                         sendInboundMDNToMessageBox: true,
///                         sendMDNAsynchronously: true,
///                         signMDN: true,
///                         signOutboundMDNIfOptional: true,
///                     },
///                     messageConnectionSettings: {
///                         ignoreCertificateNameMismatch: true,
///                         keepHttpConnectionAlive: true,
///                         supportHttpStatusCodeContinue: true,
///                         unfoldHttpHeaders: true,
///                     },
///                     securitySettings: {
///                         enableNRRForInboundDecodedMessages: true,
///                         enableNRRForInboundEncodedMessages: true,
///                         enableNRRForInboundMDN: true,
///                         enableNRRForOutboundDecodedMessages: true,
///                         enableNRRForOutboundEncodedMessages: true,
///                         enableNRRForOutboundMDN: true,
///                         overrideGroupSigningCertificate: false,
///                     },
///                     validationSettings: {
///                         checkCertificateRevocationListOnReceive: true,
///                         checkCertificateRevocationListOnSend: true,
///                         checkDuplicateMessage: true,
///                         compressMessage: true,
///                         encryptMessage: false,
///                         encryptionAlgorithm: azure_native.logic.EncryptionAlgorithm.AES128,
///                         interchangeDuplicatesValidityDays: 100,
///                         overrideMessageProperties: true,
///                         signMessage: false,
///                     },
///                 },
///                 receiverBusinessIdentity: {
///                     qualifier: "ZZ",
///                     value: "ZZ",
///                 },
///                 senderBusinessIdentity: {
///                     qualifier: "AA",
///                     value: "AA",
///                 },
///             },
///             sendAgreement: {
///                 protocolSettings: {
///                     acknowledgementConnectionSettings: {
///                         ignoreCertificateNameMismatch: true,
///                         keepHttpConnectionAlive: true,
///                         supportHttpStatusCodeContinue: true,
///                         unfoldHttpHeaders: true,
///                     },
///                     envelopeSettings: {
///                         autogenerateFileName: true,
///                         fileNameTemplate: "Test",
///                         messageContentType: "text/plain",
///                         suspendMessageOnFileNameGenerationError: true,
///                         transmitFileNameInMimeHeader: true,
///                     },
///                     errorSettings: {
///                         resendIfMDNNotReceived: true,
///                         suspendDuplicateMessage: true,
///                     },
///                     mdnSettings: {
///                         dispositionNotificationTo: "http://tempuri.org",
///                         mdnText: "Sample",
///                         micHashingAlgorithm: azure_native.logic.HashingAlgorithm.SHA1,
///                         needMDN: true,
///                         receiptDeliveryUrl: "http://tempuri.org",
///                         sendInboundMDNToMessageBox: true,
///                         sendMDNAsynchronously: true,
///                         signMDN: true,
///                         signOutboundMDNIfOptional: true,
///                     },
///                     messageConnectionSettings: {
///                         ignoreCertificateNameMismatch: true,
///                         keepHttpConnectionAlive: true,
///                         supportHttpStatusCodeContinue: true,
///                         unfoldHttpHeaders: true,
///                     },
///                     securitySettings: {
///                         enableNRRForInboundDecodedMessages: true,
///                         enableNRRForInboundEncodedMessages: true,
///                         enableNRRForInboundMDN: true,
///                         enableNRRForOutboundDecodedMessages: true,
///                         enableNRRForOutboundEncodedMessages: true,
///                         enableNRRForOutboundMDN: true,
///                         overrideGroupSigningCertificate: false,
///                     },
///                     validationSettings: {
///                         checkCertificateRevocationListOnReceive: true,
///                         checkCertificateRevocationListOnSend: true,
///                         checkDuplicateMessage: true,
///                         compressMessage: true,
///                         encryptMessage: false,
///                         encryptionAlgorithm: azure_native.logic.EncryptionAlgorithm.AES128,
///                         interchangeDuplicatesValidityDays: 100,
///                         overrideMessageProperties: true,
///                         signMessage: false,
///                     },
///                 },
///                 receiverBusinessIdentity: {
///                     qualifier: "AA",
///                     value: "AA",
///                 },
///                 senderBusinessIdentity: {
///                     qualifier: "ZZ",
///                     value: "ZZ",
///                 },
///             },
///         },
///     },
///     guestIdentity: {
///         qualifier: "AA",
///         value: "AA",
///     },
///     guestPartner: "GuestPartner",
///     hostIdentity: {
///         qualifier: "ZZ",
///         value: "ZZ",
///     },
///     hostPartner: "HostPartner",
///     integrationAccountName: "testIntegrationAccount",
///     location: "westus",
///     metadata: {},
///     resourceGroupName: "testResourceGroup",
///     tags: {
///         IntegrationAccountAgreement: "<IntegrationAccountAgreementName>",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_account_agreement = azure_native.logic.IntegrationAccountAgreement("integrationAccountAgreement",
///     agreement_name="testAgreement",
///     agreement_type=azure_native.logic.AgreementType.AS2,
///     content={
///         "a_s2": {
///             "receive_agreement": {
///                 "protocol_settings": {
///                     "acknowledgement_connection_settings": {
///                         "ignore_certificate_name_mismatch": True,
///                         "keep_http_connection_alive": True,
///                         "support_http_status_code_continue": True,
///                         "unfold_http_headers": True,
///                     },
///                     "envelope_settings": {
///                         "autogenerate_file_name": True,
///                         "file_name_template": "Test",
///                         "message_content_type": "text/plain",
///                         "suspend_message_on_file_name_generation_error": True,
///                         "transmit_file_name_in_mime_header": True,
///                     },
///                     "error_settings": {
///                         "resend_if_mdn_not_received": True,
///                         "suspend_duplicate_message": True,
///                     },
///                     "mdn_settings": {
///                         "disposition_notification_to": "http://tempuri.org",
///                         "mdn_text": "Sample",
///                         "mic_hashing_algorithm": azure_native.logic.HashingAlgorithm.SHA1,
///                         "need_mdn": True,
///                         "receipt_delivery_url": "http://tempuri.org",
///                         "send_inbound_mdn_to_message_box": True,
///                         "send_mdnasynchronously": True,
///                         "sign_mdn": True,
///                         "sign_outbound_mdn_if_optional": True,
///                     },
///                     "message_connection_settings": {
///                         "ignore_certificate_name_mismatch": True,
///                         "keep_http_connection_alive": True,
///                         "support_http_status_code_continue": True,
///                         "unfold_http_headers": True,
///                     },
///                     "security_settings": {
///                         "enable_nrr_for_inbound_decoded_messages": True,
///                         "enable_nrr_for_inbound_encoded_messages": True,
///                         "enable_nrr_for_inbound_mdn": True,
///                         "enable_nrr_for_outbound_decoded_messages": True,
///                         "enable_nrr_for_outbound_encoded_messages": True,
///                         "enable_nrr_for_outbound_mdn": True,
///                         "override_group_signing_certificate": False,
///                     },
///                     "validation_settings": {
///                         "check_certificate_revocation_list_on_receive": True,
///                         "check_certificate_revocation_list_on_send": True,
///                         "check_duplicate_message": True,
///                         "compress_message": True,
///                         "encrypt_message": False,
///                         "encryption_algorithm": azure_native.logic.EncryptionAlgorithm.AES128,
///                         "interchange_duplicates_validity_days": 100,
///                         "override_message_properties": True,
///                         "sign_message": False,
///                     },
///                 },
///                 "receiver_business_identity": {
///                     "qualifier": "ZZ",
///                     "value": "ZZ",
///                 },
///                 "sender_business_identity": {
///                     "qualifier": "AA",
///                     "value": "AA",
///                 },
///             },
///             "send_agreement": {
///                 "protocol_settings": {
///                     "acknowledgement_connection_settings": {
///                         "ignore_certificate_name_mismatch": True,
///                         "keep_http_connection_alive": True,
///                         "support_http_status_code_continue": True,
///                         "unfold_http_headers": True,
///                     },
///                     "envelope_settings": {
///                         "autogenerate_file_name": True,
///                         "file_name_template": "Test",
///                         "message_content_type": "text/plain",
///                         "suspend_message_on_file_name_generation_error": True,
///                         "transmit_file_name_in_mime_header": True,
///                     },
///                     "error_settings": {
///                         "resend_if_mdn_not_received": True,
///                         "suspend_duplicate_message": True,
///                     },
///                     "mdn_settings": {
///                         "disposition_notification_to": "http://tempuri.org",
///                         "mdn_text": "Sample",
///                         "mic_hashing_algorithm": azure_native.logic.HashingAlgorithm.SHA1,
///                         "need_mdn": True,
///                         "receipt_delivery_url": "http://tempuri.org",
///                         "send_inbound_mdn_to_message_box": True,
///                         "send_mdnasynchronously": True,
///                         "sign_mdn": True,
///                         "sign_outbound_mdn_if_optional": True,
///                     },
///                     "message_connection_settings": {
///                         "ignore_certificate_name_mismatch": True,
///                         "keep_http_connection_alive": True,
///                         "support_http_status_code_continue": True,
///                         "unfold_http_headers": True,
///                     },
///                     "security_settings": {
///                         "enable_nrr_for_inbound_decoded_messages": True,
///                         "enable_nrr_for_inbound_encoded_messages": True,
///                         "enable_nrr_for_inbound_mdn": True,
///                         "enable_nrr_for_outbound_decoded_messages": True,
///                         "enable_nrr_for_outbound_encoded_messages": True,
///                         "enable_nrr_for_outbound_mdn": True,
///                         "override_group_signing_certificate": False,
///                     },
///                     "validation_settings": {
///                         "check_certificate_revocation_list_on_receive": True,
///                         "check_certificate_revocation_list_on_send": True,
///                         "check_duplicate_message": True,
///                         "compress_message": True,
///                         "encrypt_message": False,
///                         "encryption_algorithm": azure_native.logic.EncryptionAlgorithm.AES128,
///                         "interchange_duplicates_validity_days": 100,
///                         "override_message_properties": True,
///                         "sign_message": False,
///                     },
///                 },
///                 "receiver_business_identity": {
///                     "qualifier": "AA",
///                     "value": "AA",
///                 },
///                 "sender_business_identity": {
///                     "qualifier": "ZZ",
///                     "value": "ZZ",
///                 },
///             },
///         },
///     },
///     guest_identity={
///         "qualifier": "AA",
///         "value": "AA",
///     },
///     guest_partner="GuestPartner",
///     host_identity={
///         "qualifier": "ZZ",
///         "value": "ZZ",
///     },
///     host_partner="HostPartner",
///     integration_account_name="testIntegrationAccount",
///     location="westus",
///     metadata={},
///     resource_group_name="testResourceGroup",
///     tags={
///         "IntegrationAccountAgreement": "<IntegrationAccountAgreementName>",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   integrationAccountAgreement:
///     type: azure-native:logic:IntegrationAccountAgreement
///     properties:
///       agreementName: testAgreement
///       agreementType: AS2
///       content:
///         aS2:
///           receiveAgreement:
///             protocolSettings:
///               acknowledgementConnectionSettings:
///                 ignoreCertificateNameMismatch: true
///                 keepHttpConnectionAlive: true
///                 supportHttpStatusCodeContinue: true
///                 unfoldHttpHeaders: true
///               envelopeSettings:
///                 autogenerateFileName: true
///                 fileNameTemplate: Test
///                 messageContentType: text/plain
///                 suspendMessageOnFileNameGenerationError: true
///                 transmitFileNameInMimeHeader: true
///               errorSettings:
///                 resendIfMDNNotReceived: true
///                 suspendDuplicateMessage: true
///               mdnSettings:
///                 dispositionNotificationTo: http://tempuri.org
///                 mdnText: Sample
///                 micHashingAlgorithm: SHA1
///                 needMDN: true
///                 receiptDeliveryUrl: http://tempuri.org
///                 sendInboundMDNToMessageBox: true
///                 sendMDNAsynchronously: true
///                 signMDN: true
///                 signOutboundMDNIfOptional: true
///               messageConnectionSettings:
///                 ignoreCertificateNameMismatch: true
///                 keepHttpConnectionAlive: true
///                 supportHttpStatusCodeContinue: true
///                 unfoldHttpHeaders: true
///               securitySettings:
///                 enableNRRForInboundDecodedMessages: true
///                 enableNRRForInboundEncodedMessages: true
///                 enableNRRForInboundMDN: true
///                 enableNRRForOutboundDecodedMessages: true
///                 enableNRRForOutboundEncodedMessages: true
///                 enableNRRForOutboundMDN: true
///                 overrideGroupSigningCertificate: false
///               validationSettings:
///                 checkCertificateRevocationListOnReceive: true
///                 checkCertificateRevocationListOnSend: true
///                 checkDuplicateMessage: true
///                 compressMessage: true
///                 encryptMessage: false
///                 encryptionAlgorithm: AES128
///                 interchangeDuplicatesValidityDays: 100
///                 overrideMessageProperties: true
///                 signMessage: false
///             receiverBusinessIdentity:
///               qualifier: ZZ
///               value: ZZ
///             senderBusinessIdentity:
///               qualifier: AA
///               value: AA
///           sendAgreement:
///             protocolSettings:
///               acknowledgementConnectionSettings:
///                 ignoreCertificateNameMismatch: true
///                 keepHttpConnectionAlive: true
///                 supportHttpStatusCodeContinue: true
///                 unfoldHttpHeaders: true
///               envelopeSettings:
///                 autogenerateFileName: true
///                 fileNameTemplate: Test
///                 messageContentType: text/plain
///                 suspendMessageOnFileNameGenerationError: true
///                 transmitFileNameInMimeHeader: true
///               errorSettings:
///                 resendIfMDNNotReceived: true
///                 suspendDuplicateMessage: true
///               mdnSettings:
///                 dispositionNotificationTo: http://tempuri.org
///                 mdnText: Sample
///                 micHashingAlgorithm: SHA1
///                 needMDN: true
///                 receiptDeliveryUrl: http://tempuri.org
///                 sendInboundMDNToMessageBox: true
///                 sendMDNAsynchronously: true
///                 signMDN: true
///                 signOutboundMDNIfOptional: true
///               messageConnectionSettings:
///                 ignoreCertificateNameMismatch: true
///                 keepHttpConnectionAlive: true
///                 supportHttpStatusCodeContinue: true
///                 unfoldHttpHeaders: true
///               securitySettings:
///                 enableNRRForInboundDecodedMessages: true
///                 enableNRRForInboundEncodedMessages: true
///                 enableNRRForInboundMDN: true
///                 enableNRRForOutboundDecodedMessages: true
///                 enableNRRForOutboundEncodedMessages: true
///                 enableNRRForOutboundMDN: true
///                 overrideGroupSigningCertificate: false
///               validationSettings:
///                 checkCertificateRevocationListOnReceive: true
///                 checkCertificateRevocationListOnSend: true
///                 checkDuplicateMessage: true
///                 compressMessage: true
///                 encryptMessage: false
///                 encryptionAlgorithm: AES128
///                 interchangeDuplicatesValidityDays: 100
///                 overrideMessageProperties: true
///                 signMessage: false
///             receiverBusinessIdentity:
///               qualifier: AA
///               value: AA
///             senderBusinessIdentity:
///               qualifier: ZZ
///               value: ZZ
///       guestIdentity:
///         qualifier: AA
///         value: AA
///       guestPartner: GuestPartner
///       hostIdentity:
///         qualifier: ZZ
///         value: ZZ
///       hostPartner: HostPartner
///       integrationAccountName: testIntegrationAccount
///       location: westus
///       metadata: {}
///       resourceGroupName: testResourceGroup
///       tags:
///         IntegrationAccountAgreement: <IntegrationAccountAgreementName>
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
/// $ pulumi import azure-native:logic:IntegrationAccountAgreement <IntegrationAccountAgreementName> /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/agreements/{agreementName}
/// ```
class IntegrationAccountAgreement extends pulumi.CustomResource {
  /// The agreement type.
  late final pulumi.Output<String> agreementType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The changed time.
  late final pulumi.Output<String> changedTime;
  /// The agreement content.
  late final pulumi.Output<AgreementContentResponse> content;
  /// The created time.
  late final pulumi.Output<String> createdTime;
  /// The business identity of the guest partner.
  late final pulumi.Output<BusinessIdentityResponse> guestIdentity;
  /// The integration account partner that is set as guest partner for this agreement.
  late final pulumi.Output<String> guestPartner;
  /// The business identity of the host partner.
  late final pulumi.Output<BusinessIdentityResponse> hostIdentity;
  /// The integration account partner that is set as host partner for this agreement.
  late final pulumi.Output<String> hostPartner;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The metadata.
  late final pulumi.Output<dynamic> metadata;
  /// Gets the resource name.
  late final pulumi.Output<String> name;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationAccountAgreement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountAgreement]. {@macro pulumi_logic_integration_account_agreement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountAgreement(
    String name, {
    IntegrationAccountAgreementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:logic:IntegrationAccountAgreement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agreementType = registerOutput<String>('agreementType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changedTime = registerOutput<String>('changedTime');
    content = registerOutput<AgreementContentResponse>('content', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgreementContentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTime = registerOutput<String>('createdTime');
    guestIdentity = registerOutput<BusinessIdentityResponse>('guestIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BusinessIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    guestPartner = registerOutput<String>('guestPartner');
    hostIdentity = registerOutput<BusinessIdentityResponse>('hostIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BusinessIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostPartner = registerOutput<String>('hostPartner');
    location = registerOutput<String?>('location');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [IntegrationAccountAgreement] resource.
  IntegrationAccountAgreement.reference(String urn)
    : super(
        'azure-native:logic:IntegrationAccountAgreement',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agreementType = registerOutput<String>('agreementType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changedTime = registerOutput<String>('changedTime');
    content = registerOutput<AgreementContentResponse>('content', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgreementContentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdTime = registerOutput<String>('createdTime');
    guestIdentity = registerOutput<BusinessIdentityResponse>('guestIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BusinessIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    guestPartner = registerOutput<String>('guestPartner');
    hostIdentity = registerOutput<BusinessIdentityResponse>('hostIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BusinessIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostPartner = registerOutput<String>('hostPartner');
    location = registerOutput<String?>('location');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
